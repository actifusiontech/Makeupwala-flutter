import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import '../../domain/commerce_models.dart';
import '../widgets/makeup_painter.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class VirtualMirrorScreen extends StatefulWidget {
  final Product product;

  const VirtualMirrorScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<VirtualMirrorScreen> createState() => _VirtualMirrorScreenState();
}

class _VirtualMirrorScreenState extends State<VirtualMirrorScreen> {
  CameraController? _cameraController;
  FaceDetector? _faceDetector;
  bool _isBusy = false;
  CustomPaint? _customPaint;
  List<Face> _faces = [];
  double _opacity = 0.5;

  @override
  void initState() {
    super.initState();
    _opacity = widget.product.arMetadata?.opacity ?? 0.5;
    _initializeCamera();
    _initializeDetector();
  }

  void _initializeDetector() {
    _faceDetector = FaceDetector(
      options: FaceDetectorOptions(
        enableContours: true,
        enableLandmarks: true,
        performanceMode: FaceDetectorMode.fast,
      ),
    );
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final frontCamera = cameras.firstWhere(
      (camera) => camera.lensDirection == CameraLensDirection.front,
      orElse: () => cameras.first,
    );

    _cameraController = CameraController(
      frontCamera,
      ResolutionPreset.high,
      enableAudio: false,
    );

    await _cameraController?.initialize();
    if (!mounted) return;

    _cameraController?.startImageStream(_processCameraImage);
    setState(() {});
  }

  void _processCameraImage(CameraImage image) async {
    if (_isBusy || _faceDetector == null) return;
    _isBusy = true;

    final inputImage = _processImage(image);
    if (inputImage == null) {
      _isBusy = false;
      return;
    }

    final faces = await _faceDetector!.processImage(inputImage);
    if (mounted) {
      setState(() {
        _faces = faces;
      });
    }
    _isBusy = false;
  }

  InputImage? _processImage(CameraImage image) {
    try {
      final WriteBuffer allBytes = WriteBuffer();
      for (final Plane plane in image.planes) {
        allBytes.putUint8List(plane.bytes);
      }
      final bytes = allBytes.done().buffer.asUint8List();

      final Size imageSize = Size(image.width.toDouble(), image.height.toDouble());
      final InputImageRotation imageRotation = InputImageRotation.rotation270deg;

      final inputImageFormat = InputImageFormatValue.fromRawValue(image.format.raw) ?? 
          (defaultTargetPlatform == TargetPlatform.android ? InputImageFormat.nv21 : InputImageFormat.bgra8888);

      return InputImage.fromBytes(
        bytes: bytes,
        metadata: InputImageMetadata(
          size: imageSize,
          rotation: imageRotation,
          format: inputImageFormat,
          bytesPerRow: image.planes[0].bytesPerRow,
        ),
      );
    } catch (_) {
      return null;
    }
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    _faceDetector?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_cameraController == null || !_cameraController!.value.isInitialized) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Camera Preview
          CameraPreview(_cameraController!),

          // AR Overlay (Makeup)
          CustomPaint(
            painter: MakeupPainter(
              faces: _faces,
              absoluteImageSize: Size(
                _cameraController!.value.previewSize!.height,
                _cameraController!.value.previewSize!.width,
              ),
              metadata: widget.product.arMetadata ?? const ARMetadata(isArEnabled: true),
              rotation: InputImageRotation.rotation270deg,
            ),
          ),

          // Top Controls
          Positioned(
            top: 50,
            left: 20,
            child: CircleAvatar(
              backgroundColor: Colors.black54,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),

          // Bottom Controls (Intensity Slider)
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white24),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'INTENSITY',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      Expanded(
                        child: Slider(
                          value: _opacity,
                          min: 0.1,
                          max: 1.0,
                          activeColor: AppColors.primary,
                          inactiveColor: Colors.white24,
                          onChanged: (val) {
                            setState(() => _opacity = val);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  widget.product.name.toUpperCase(),
                  style: GoogleFonts.playfairDisplay(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
