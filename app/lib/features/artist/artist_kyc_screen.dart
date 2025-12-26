import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_typography.dart';
import '../../shared/theme/app_spacing.dart';
import 'bloc/artist_kyc_bloc.dart';

class ArtistKYCScreen extends StatefulWidget {
  const ArtistKYCScreen({super.key});

  @override
  State<ArtistKYCScreen> createState() => _ArtistKYCScreenState();
}

class _ArtistKYCScreenState extends State<ArtistKYCScreen> {
  int _currentStep = 0;
  String? _idProofUrl;
  String? _addressProofUrl;
  String? _certificateUrl;
  bool _isUploading = false;

  final ImagePicker _picker = ImagePicker();

  Future<String?> _uploadImage(XFile image, String folder) async {
    try {
      setState(() => _isUploading = true);
      
      final file = File(image.path);
      final fileName = '${DateTime.now().millisecondsSinceEpoch}_${image.name}';
      final ref = FirebaseStorage.instance.ref().child('kyc/$folder/$fileName');
      
      await ref.putFile(file);
      final url = await ref.getDownloadURL();
      
      setState(() => _isUploading = false);
      return url;
    } catch (e) {
      setState(() => _isUploading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Upload failed: $e')),
      );
      return null;
    }
  }

  Future<void> _pickAndUpload(String type) async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      final url = await _uploadImage(image, type);
      if (url != null) {
        setState(() {
          switch (type) {
            case 'id_proof':
              _idProofUrl = url;
              break;
            case 'address_proof':
              _addressProofUrl = url;
              break;
            case 'certificate':
              _certificateUrl = url;
              break;
          }
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KYC Verification'),
        backgroundColor: AppColors.primary,
      ),
      body: BlocConsumer<ArtistKYCBloc, ArtistKYCState>(
        listener: (context, state) {
          state.maybeWhen(
            submitted: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('KYC submitted successfully!')),
              );
              Navigator.of(context).pop();
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Stepper(
            currentStep: _currentStep,
            onStepContinue: () {
              if (_currentStep < 2) {
                setState(() => _currentStep++);
              } else {
                _submitKYC();
              }
            },
            onStepCancel: () {
              if (_currentStep > 0) {
                setState(() => _currentStep--);
              }
            },
            steps: [
              Step(
                title: const Text('ID Proof'),
                content: _buildDocumentUpload(
                  'Upload ID Proof (Aadhaar/PAN/Passport)',
                  _idProofUrl,
                  () => _pickAndUpload('id_proof'),
                ),
                isActive: _currentStep >= 0,
              ),
              Step(
                title: const Text('Address Proof'),
                content: _buildDocumentUpload(
                  'Upload Address Proof',
                  _addressProofUrl,
                  () => _pickAndUpload('address_proof'),
                ),
                isActive: _currentStep >= 1,
              ),
              Step(
                title: const Text('Certificate'),
                content: _buildDocumentUpload(
                  'Upload Professional Certificate (Optional)',
                  _certificateUrl,
                  () => _pickAndUpload('certificate'),
                ),
                isActive: _currentStep >= 2,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildDocumentUpload(String label, String? url, VoidCallback onTap) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTypography.bodyLarge),
        const SizedBox(height: AppSpacing.md),
        if (url != null)
          Container(
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.success),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                Center(
                  child: Image.network(url, fit: BoxFit.cover),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Icon(Icons.check_circle, color: AppColors.success),
                ),
              ],
            ),
          )
        else
          GestureDetector(
            onTap: _isUploading ? null : onTap,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.border, width: 2),
                borderRadius: BorderRadius.circular(8),
                color: AppColors.backgroundLight,
              ),
              child: Center(
                child: _isUploading
                    ? const CircularProgressIndicator()
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.cloud_upload, size: 48, color: AppColors.primary),
                          const SizedBox(height: AppSpacing.sm),
                          Text('Tap to upload', style: AppTypography.bodyMedium),
                        ],
                      ),
              ),
            ),
          ),
      ],
    );
  }

  void _submitKYC() {
    if (_idProofUrl == null || _addressProofUrl == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please upload required documents')),
      );
      return;
    }

    context.read<ArtistKYCBloc>().add(
          ArtistKYCEvent.submitKYC(
            idProof: _idProofUrl!,
            addressProof: _addressProofUrl!,
            certificate: _certificateUrl ?? '',
          ),
        );
  }
}
