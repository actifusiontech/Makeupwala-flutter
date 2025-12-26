import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../booking/booking_screen.dart';
import '../reviews/bloc/review_bloc.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_typography.dart';
import '../../shared/theme/app_spacing.dart';

class ArtistProfileScreen extends StatelessWidget {
  final String artistId;
  final Map<String, dynamic>? artistData;

  const ArtistProfileScreen({
    super.key,
    required this.artistId,
    this.artistData,
  });

  @override
  Widget build(BuildContext context) {
    // Use passed data or fetch if needed (for now assuming passed)
    final name = artistData?['full_name'] ?? 'Artist Name';
    final category = artistData?['category'] ?? 'Makeup Artist';
    final imageUrl = artistData?['profile_image'];

    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            floating: false,
            pinned: true,
            backgroundColor: AppColors.primary,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(name),
              background: imageUrl != null
                  ? Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      color: AppColors.primary,
                      child: const Center(
                        child: Icon(Icons.person, size: 80, color: Colors.white),
                      ),
                    ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.pop(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.screenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: AppTypography.headlineMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Row(
                    children: [
                      const Icon(Icons.star, color: AppColors.warning),
                      const SizedBox(width: 4),
                      Text(
                        '4.8 (120 reviews)', // Dummy data
                        style: AppTypography.bodyMedium,
                      ),
                      const Spacer(),
                      Text(
                        'Starts from ₹5000', // Dummy data
                        style: AppTypography.titleMedium.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  Text(
                    'About',
                    style: AppTypography.titleLarge,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'Professional makeup artist with over 5 years of experience in bridal and party makeup. Uses premium products like MAC, Huda Beauty, and Bobbi Brown.',
                    style: AppTypography.bodyMedium,
                  ),
                  const SizedBox(height: AppSpacing.xl),

                  // Bridal Bundles
                  _buildBundlesSection(),
                  const SizedBox(height: AppSpacing.xl),
                  Text(
                    'Services',
                    style: AppTypography.titleLarge,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  _buildServiceItem('Bridal Makeup', '₹15,000'),
                  _buildServiceItem('Party Makeup', '₹5,000'),
                  _buildServiceItem('Engagement Makeup', '₹8,000'),
                  
                  const SizedBox(height: AppSpacing.xxl),
                  SizedBox(
                    width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                context.push(
                                  '/booking/$artistId',
                                  extra: {
                                    'serviceId': 'service_123',
                                    'serviceName': 'Bridal Makeup',
                                    'price': '₹15,000',
                                  },
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary,
                                padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                              ),
                              child: const Text(
                                'Book Now',
                                style: TextStyle(color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(width: AppSpacing.md),
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {
                                // Create room and navigate
                                // For now, we'll just navigate to chat list or assume room creation logic is handled in ChatList or we pass artistId
                                // Ideally, we should call createRoom API here.
                                // Simulating navigation to chat list for now, or direct room if we had the ID.
                                // Let's just go to chat list for MVP or implement create room logic in a Bloc here.
                                context.push('/chat'); 
                              },
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                                side: const BorderSide(color: AppColors.primary),
                              ),
                              child: const Text(
                                'Chat',
                                style: TextStyle(color: AppColors.primary, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                  ),
                  const SizedBox(height: AppSpacing.xxl),

                  // Reviews Section
                  Text('Reviews', style: AppTypography.titleLarge),
                  const SizedBox(height: AppSpacing.md),
                  BlocProvider(
                    create: (context) => ReviewBloc()..add(ReviewEvent.fetchArtistReviews(artistId: artistId)),
                    child: BlocBuilder<ReviewBloc, ReviewState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          loading: () => const Center(child: CircularProgressIndicator()),
                          loaded: (reviews) {
                            if (reviews.isEmpty) {
                              return const Text('No reviews yet.');
                            }
                            return Column(
                              children: reviews.map((review) => _buildReviewCard(review)).toList(),
                            );
                          },
                          error: (message) => Text('Failed to load reviews: $message', style: const TextStyle(color: Colors.red)),
                          orElse: () => const SizedBox.shrink(),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBundlesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Bridal Bouquets (Bundles)', style: AppTypography.titleLarge),
            TextButton(
              onPressed: () {},
              child: const Text('View All'),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        SizedBox(
          height: 140,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildBundleCard(
                'Complete Wedding Glow',
                '3 Events (Eng, Haldi, Wedding)',
                '₹25,000',
              ),
              const SizedBox(width: AppSpacing.md),
              _buildBundleCard(
                'Bridal Party Special',
                'Bride + 4 Bridesmaids',
                '₹18,000',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBundleCard(String title, String subtitle, String price) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage('assets/images/bridal_bundle_banner.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'BOOK PACKAGE',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceItem(String name, String price) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: AppTypography.bodyLarge),
          Text(price, style: AppTypography.titleMedium),
        ],
      ),
    );
  }

  Widget _buildReviewCard(dynamic review) {
    return Card(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 16),
                const SizedBox(width: 4),
                Text('${review['rating']}', style: AppTypography.labelLarge),
              ],
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(review['comment'] ?? '', style: AppTypography.bodyMedium),
          ],
        ),
      ),
    );
  }
}
