import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:image_picker/image_picker.dart';
import 'package:app/features/artist/data/artist_repository.dart';

class ArtistOnboardingScreen extends StatefulWidget {
  const ArtistOnboardingScreen({super.key});

  @override
  State<ArtistOnboardingScreen> createState() => _ArtistOnboardingScreenState();
}

class _ArtistOnboardingScreenState extends State<ArtistOnboardingScreen> {
  final _formKey = GlobalKey<FormState>();
  int _currentStep = 0;
  
  // Controllers
  final _yearsController = TextEditingController();
  final _bioController = TextEditingController();
  final _instaController = TextEditingController();
  
  // State
  final Set<String> _selectedServices = {};
  bool _isLoading = false;

  final List<String> _serviceTypes = [
    'Bridal Makeup', 'Party Makeup', 'Hairstyling', 'Saree Draping',
    'Nail Art', 'Mehendi', 'Facials', 'Airbrush'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: _currentStep > 0 
          ? IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => setState(() => _currentStep--),
            )
          : null,
        title: Text(
          'Artist Profile Setup',
          style: GoogleFonts.playfairDisplay(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
             // Progress Indicator
            LinearProgressIndicator(
              value: (_currentStep + 1) / 3,
              backgroundColor: Colors.grey[100],
              valueColor: const AlwaysStoppedAnimation(Color(0xFFC5A028)), // Gold
            ),
            
            Expanded(
              child: Form(
                key: _formKey,
                child: ListView(
                  padding: const EdgeInsets.all(AppSpacing.screenPadding),
                  children: [
                    _buildStepContent(),
                  ],
                ),
              ),
            ),
            
            // Bottom Action Bar
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, -4))],
              ),
              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _handleNext,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2C2C2C),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: _isLoading 
                    ? const SizedBox(width: 24, height: 24, child: CircularProgressIndicator(color: Colors.white))
                    : Text(
                        _currentStep == 2 ? 'COMPLETE SETUP' : 'NEXT',
                        style: GoogleFonts.lato(fontWeight: FontWeight.bold, letterSpacing: 1),
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepContent() {
    switch (_currentStep) {
      case 0: return _buildBasicInfo();
      case 1: return _buildServices();
      case 2: return _buildPortfolio();
      default: return const SizedBox.shrink();
    }
  }

  Widget _buildBasicInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tell us about yourself',
          style: GoogleFonts.playfairDisplay(fontSize: 24, fontWeight: FontWeight.w600),
        ).animate().fadeIn(),
        const SizedBox(height: 8),
        Text(
          'Help clients know you better',
          style: GoogleFonts.lato(color: Colors.black54),
        ),
        const SizedBox(height: 30),
        
        _buildLabel('YEARS OF EXPERIENCE'),
        TextFormField(
          controller: _yearsController,
          keyboardType: TextInputType.number,
          decoration: _inputDecoration('e.g. 5'),
          validator: (v) => v!.isEmpty ? 'Required' : null,
        ),
        const SizedBox(height: 20),
        
        _buildLabel('INSTAGRAM HANDLE (Optional)'),
        TextFormField(
          controller: _instaController,
          decoration: _inputDecoration('@username'),
        ),
        const SizedBox(height: 20),

        _buildLabel('BIO'),
        TextFormField(
          controller: _bioController,
          maxLines: 4,
          decoration: _inputDecoration('Describe your style and specialty...'),
          validator: (v) => v!.isEmpty ? 'Required' : null,
        ),
      ],
    );
  }

  Widget _buildServices() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Specialties',
          style: GoogleFonts.playfairDisplay(fontSize: 24, fontWeight: FontWeight.w600),
        ).animate().fadeIn(),
        const SizedBox(height: 8),
        Text(
          'Select the services you offer',
          style: GoogleFonts.lato(color: Colors.black54),
        ),
        const SizedBox(height: 30),
        
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: _serviceTypes.map((service) {
            final isSelected = _selectedServices.contains(service);
            return FilterChip(
              label: Text(service),
              selected: isSelected,
              onSelected: (selected) {
                setState(() {
                  if (selected) _selectedServices.add(service);
                  else _selectedServices.remove(service);
                });
              },
              backgroundColor: Colors.white,
              selectedColor: const Color(0xFFC5A028).withOpacity(0.2),
              labelStyle: TextStyle(
                color: isSelected ? const Color(0xFF5A4405) : Colors.black87,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: isSelected ? const Color(0xFFC5A028) : Colors.black12),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildPortfolio() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Portfolio',
          style: GoogleFonts.playfairDisplay(fontSize: 24, fontWeight: FontWeight.w600),
        ).animate().fadeIn(),
        const SizedBox(height: 8),
        Text(
          'Upload your best work to attract clients',
          style: GoogleFonts.lato(color: Colors.black54),
        ),
        const SizedBox(height: 30),
        
          GestureDetector(
            onTap: _pickImages,
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[50],
              ),
              child: _portfolioImages.isEmpty 
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.cloud_upload_outlined, size: 48, color: Colors.grey),
                      const SizedBox(height: 12),
                      Text(
                        'Tap to upload photos',
                        style: GoogleFonts.lato(color: Colors.grey[600]),
                      ),
                    ],
                  )
                : GridView.builder(
                    padding: const EdgeInsets.all(8),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
                    itemCount: _portfolioImages.length,
                    itemBuilder: (ctx, i) => Image.asset(_portfolioImages[i].path, fit: BoxFit.cover), // Note: works on mobile, may need FileImage
                  ),
            ),
          ),
        const SizedBox(height: 16),
        Text(
          'Min. 3 photos required',
          style: GoogleFonts.lato(color: Colors.orange, fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(text, style: GoogleFonts.lato(fontSize: 11, fontWeight: FontWeight.bold, letterSpacing: 1.2, color: Colors.black45)),
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: Colors.grey[50],
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Colors.black12)),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Colors.black12)),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Color(0xFFC5A028), width: 1.5)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    );
  }

  final _repository = ArtistRepository();
  final List<XFile> _portfolioImages = [];
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImages() async {
    final List<XFile> images = await _picker.pickMultiImage();
    if (images.isNotEmpty) {
      setState(() => _portfolioImages.addAll(images));
    }
  }

  void _handleNext() async {
    setState(() => _isLoading = true);
    try {
      if (_currentStep == 0) {
        // Step 1: Basic Profile
        if (_formKey.currentState!.validate()) {
          await _repository.updateProfile({
            'experience_years': int.parse(_yearsController.text),
            'bio': _bioController.text,
            'display_name': 'Artist', // Should fetch from User or allow input
            'base_city': 'Mumbai', // Default for now
            'base_state': 'Maharashtra',
            'pincode': '400001',
          });
          if (mounted) setState(() => _currentStep++);
        }
      } else if (_currentStep == 1) {
        // Step 2: Services
        if (_selectedServices.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please select at least one service')));
          return;
        }
        
        // Add services one by one (or bulk if supported)
        for (final service in _selectedServices) {
          await _repository.addService({
            'name': service,
            'price': 5000.0, // Default price, real app should ask
            'duration': 60,
          });
        }
        if (mounted) setState(() => _currentStep++);
      } else {
        // Step 3: Portfolio & Complete
        if (_portfolioImages.length < 3) {
           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please upload at least 3 photos')));
           setState(() => _isLoading = false);
           return;
        }

        for (final img in _portfolioImages) {
          await _repository.uploadMedia(img.path);
        }

        if (mounted) {
          context.go('/artist/home');
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }
}
