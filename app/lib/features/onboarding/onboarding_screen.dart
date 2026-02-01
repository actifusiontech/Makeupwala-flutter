import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingPage> _pages = [
    OnboardingPage(
      title: 'Find Your Perfect Artist',
      description:
          'Discover talented makeup artists and beauty professionals near you',
      imagePath: 'assets/images/onboarding_artist_application_1769896179456.png',
      color: AppColors.primary,
    ),
    OnboardingPage(
      title: 'Book with Confidence',
      description:
          'Browse portfolios, read reviews, and book appointments instantly',
      imagePath: 'assets/images/onboarding_mobile_booking_1769896193979.png',
      color: AppColors.info,
    ),
    OnboardingPage(
      title: 'Look Your Best',
      description:
          'Get stunning results from verified professionals you can trust',
      imagePath: 'assets/images/onboarding_glowing_result_1769896209398.png',
      color: AppColors.success,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. Full Screen Images
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) => setState(() => _currentPage = index),
            itemCount: _pages.length,
            itemBuilder: (context, index) {
              return Image.asset(
                _pages[index].imagePath,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              );
            },
          ),

          // 2. Gradient Overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.8),
                    Colors.black,
                  ],
                  stops: const [0.4, 0.6, 0.8, 1.0],
                ),
              ),
            ),
          ),

          // 3. Content
          SafeArea(
            child: Column(
              children: [
                // Skip Button (Top Right)
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(AppSpacing.md),
                    child: TextButton(
                      onPressed: () => context.go('/login'),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black.withOpacity(0.2),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                      child: const Text('Skip'),
                    ),
                  ),
                ),
                
                const Spacer(),

                // Text Content
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
                  child: Column(
                    children: [
                      Text(
                        _pages[_currentPage].title,
                        style: AppTypography.displaySmall.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                        ),
                        textAlign: TextAlign.center,
                      ).animate().fadeIn().slideY(begin: 0.3, end: 0),
                      
                      const SizedBox(height: AppSpacing.md),
                      
                      Text(
                        _pages[_currentPage].description,
                        style: AppTypography.bodyLarge.copyWith(
                          color: Colors.white.withOpacity(0.9),
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ).animate().fadeIn(delay: 200.ms).slideY(begin: 0.3, end: 0),
                    ],
                  ),
                ),

                const SizedBox(height: AppSpacing.xxl),

                // Page Indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _pages.length,
                    (index) => _buildDot(index),
                  ),
                ),

                const SizedBox(height: AppSpacing.xl),

                // Action Button
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.screenPadding,
                    vertical: AppSpacing.lg,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_currentPage < _pages.length - 1) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeOutCubic,
                          );
                        } else {
                          context.go('/login');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Text(
                        _currentPage < _pages.length - 1 ? 'Next' : 'Get Started',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: _currentPage == index ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: _currentPage == index ? AppColors.primary : Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class OnboardingPage {
  final String title;
  final String description;
  final String imagePath;
  final Color color;

  OnboardingPage({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.color,
  });
}
