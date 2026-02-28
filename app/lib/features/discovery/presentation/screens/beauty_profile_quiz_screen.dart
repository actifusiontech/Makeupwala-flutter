import 'package:flutter/material.dart';
import '../../data/models/beauty_profile.dart';
import '../../data/discovery_repository.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BeautyProfileQuizScreen extends StatefulWidget {
  const BeautyProfileQuizScreen({Key? key}) : super(key: key);

  @override
  State<BeautyProfileQuizScreen> createState() => _BeautyProfileQuizScreenState();
}

class _BeautyProfileQuizScreenState extends State<BeautyProfileQuizScreen> {
  final PageController _pageController = PageController();
  final DiscoveryRepository _repository = DiscoveryRepository();
  
  int _currentStep = 0;
  String _selectedTone = '';
  String _selectedType = '';
  String _selectedStyle = '';

  final List<Map<String, String>> _tones = [
    {'id': 'Fair', 'label': 'Fair', 'color': '0xFFFDF5E6'},
    {'id': 'Medium', 'label': 'Medium', 'color': '0xFFF5DEB3'},
    {'id': 'Tan', 'label': 'Tan', 'color': '0xFFD2B48C'},
    {'id': 'Deep', 'label': 'Deep', 'color': '0xFF8B4513'},
  ];

  final List<String> _types = ['Oily', 'Dry', 'Combination', 'Sensitive', 'Normal'];
  final List<String> _styles = ['Minimalist', 'Bridal', 'Party', 'Editorial', 'SFX', 'Traditional'];

  void _nextStep() {
    if (_currentStep < 2) {
      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      setState(() => _currentStep++);
    } else {
      _saveProfile();
    }
  }

  Future<void> _saveProfile() async {
    final profile = BeautyProfile(
      skinTone: _selectedTone,
      skinType: _selectedType,
      preferredStyle: _selectedStyle,
    );

    try {
      await _repository.updateBeautyProfile(profile);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('has_taken_beauty_quiz', true);
      
      if (mounted) {
        context.pop(true); // pass true to indicate completion
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Beauty Profile updated! Your feed is now personalized.')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error saving profile: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () => context.pop(),
        ),
        title: Text('${(_currentStep + 1)} of 3', style: GoogleFonts.lato(color: Colors.grey, fontSize: 14)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            value: (_currentStep + 1) / 3,
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildStep(
                  'What is your skin tone?',
                  'This helps us suggest appropriate shade palettes.',
                  _buildToneGrid(),
                ),
                _buildStep(
                  'What is your skin type?',
                  'To recommend products that last longer for you.',
                  _buildTypeSelection(),
                ),
                _buildStep(
                  'Your favorite look style?',
                  'Personalize your discovery feed.',
                  _buildStyleSelection(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.xl),
            child: SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: _isNextEnabled() ? _nextStep : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                ),
                child: Text(
                  _currentStep == 2 ? 'FINISH' : 'CONTINUE',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
                ),
              ),
            ).animate().slideY(begin: 0.2, end: 0, delay: 500.ms),
          ),
        ],
      ),
    );
  }

  bool _isNextEnabled() {
    if (_currentStep == 0) return _selectedTone.isNotEmpty;
    if (_currentStep == 1) return _selectedType.isNotEmpty;
    if (_currentStep == 2) return _selectedStyle.isNotEmpty;
    return false;
  }

  Widget _buildStep(String title, String subtitle, Widget content) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: GoogleFonts.playfairDisplay(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(subtitle, style: GoogleFonts.lato(fontSize: 16, color: Colors.grey)),
          const SizedBox(height: 40),
          Expanded(child: content),
        ],
      ),
    ).animate().fadeIn().slideX(begin: 0.1, end: 0);
  }

  Widget _buildToneGrid() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.2,
      ),
      itemCount: _tones.length,
      itemBuilder: (context, index) {
        final tone = _tones[index];
        final isSelected = _selectedTone == tone['id'];
        return GestureDetector(
          onTap: () => setState(() => _selectedTone = tone['id']!),
          child: Container(
            decoration: BoxDecoration(
              color: Color(int.parse(tone['color']!)),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: isSelected ? AppColors.primary : Colors.transparent,
                width: 3,
              ),
              boxShadow: isSelected ? [BoxShadow(color: AppColors.primary.withOpacity(0.3), blurRadius: 10)] : [],
            ),
            child: Center(
              child: Text(
                tone['label']!,
                style: TextStyle(
                  color: index > 2 ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildTypeSelection() {
    return ListView.builder(
      itemCount: _types.length,
      itemBuilder: (context, index) {
        final type = _types[index];
        final isSelected = _selectedType == type;
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: InkWell(
            onTap: () => setState(() => _selectedType = type),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary.withOpacity(0.05) : Colors.grey[50],
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: isSelected ? AppColors.primary : Colors.grey[200]!),
              ),
              child: Row(
                children: [
                  Text(type, style: GoogleFonts.lato(fontSize: 16, fontWeight: isSelected ? FontWeight.bold : FontWeight.normal)),
                  const Spacer(),
                  if (isSelected) const Icon(Icons.check_circle, color: AppColors.primary),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildStyleSelection() {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: _styles.map((style) {
        final isSelected = _selectedStyle == style;
        return ChoiceChip(
          label: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Text(style, style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
          selected: isSelected,
          onSelected: (val) => setState(() => _selectedStyle = style),
          selectedColor: AppColors.primary,
          labelStyle: TextStyle(color: isSelected ? Colors.white : AppColors.primary),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: isSelected ? AppColors.primary : AppColors.primary.withOpacity(0.2)),
          ),
        );
      }).toList(),
    );
  }
}
