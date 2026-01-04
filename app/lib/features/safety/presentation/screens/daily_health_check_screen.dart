
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../data/safety_repository.dart';

class DailyHealthCheckScreen extends StatefulWidget {
  final SafetyRepository repository;

  const DailyHealthCheckScreen({Key? key, required this.repository}) : super(key: key);

  @override
  State<DailyHealthCheckScreen> createState() => _DailyHealthCheckScreenState();
}

class _DailyHealthCheckScreenState extends State<DailyHealthCheckScreen> {
  final _tempController = TextEditingController();
  File? _maskPhoto;
  bool _isLoading = false;

  Future<void> _capturePhoto() async {
    final status = await Permission.camera.request();
    if (status.isGranted) {
      final picker = ImagePicker();
      final photo = await picker.pickImage(source: ImageSource.camera, preferredCameraDevice: CameraDevice.front);
      if (photo != null) {
        setState(() {
          _maskPhoto = File(photo.path);
        });
      }
    }
  }

  Future<void> _submit() async {
    if (_tempController.text.isEmpty || _maskPhoto == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please enter temperature and take a photo')));
      return;
    }

    setState(() => _isLoading = true);
    try {
      final temp = double.parse(_tempController.text);
      await widget.repository.submitHealthLog(temperature: temp, maskPhotoPath: _maskPhoto!.path);
      if (mounted) {
        Navigator.pop(context, true); // Return success
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daily Health Check')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text('To ensure safety, please log your temperature and a mask selfie.', textAlign: TextAlign.center),
            const SizedBox(height: 20),
            TextField(
              controller: _tempController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Body Temperature (°C)',
                border: OutlineInputBorder(),
                suffixText: '°C',
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: _capturePhoto,
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
                child: _maskPhoto != null
                    ? ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.file(_maskPhoto!, fit: BoxFit.cover))
                    : const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.camera_alt, size: 50, color: Colors.grey),
                          Text('Tap to take Mask Selfie'),
                        ],
                      ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isLoading ? null : _submit,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: _isLoading
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Text('Submit Health Log', style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
