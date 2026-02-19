import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../core/models/artist.dart';
import 'package:app/features/artist/data/artist_repository.dart';
import '../reviews/bloc/review_bloc.dart';
import '../../favorites/presentation/bloc/favorites_bloc.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import '../reviews/data/review_repository.dart';
import '../reviews/domain/review_model.dart';
import '../../../core/network/api_client.dart';
import '../reviews/bloc/review_event.dart';
import '../reviews/bloc/review_state.dart';
import '../../favorites/presentation/bloc/favorites_event.dart';
import '../../favorites/presentation/bloc/favorites_state.dart';
import '../auth/bloc/auth_bloc.dart';

class ArtistProfileScreen extends StatefulWidget {
  final String artistId;
  final Map<String, dynamic>? artistData;

  const ArtistProfileScreen({
    super.key,
    required this.artistId,
    this.artistData,
  });

  @override
  State<ArtistProfileScreen> createState() => _ArtistProfileScreenState();
}

class _ArtistProfileScreenState extends State<ArtistProfileScreen> {
  late Future<ArtistProfile> _profileFuture;

  @override
  void initState() {
    super.initState();
    // Fetch profile
    _profileFuture = context.read<ArtistRepository>().getArtistProfile(widget.artistId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: FutureBuilder<ArtistProfile>(
        future: _profileFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Can use widget.artistData for skeletal loading if available
             return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
             return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData) {
             return const Center(child: Text('Artist not found'));
          }

          final profile = snapshot.data!;
          return _buildContent(profile);
        },
      ),
    );
  }

  Widget _buildContent(ArtistProfile profile) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250.0,
          floating: false,
          pinned: true,
          backgroundColor: AppColors.primary,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(profile.fullName),
            background: profile.profileImageUrl != null
                ? Image.network(
                    profile.profileImageUrl!,
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
          actions: [
            BlocBuilder<FavoritesBloc, FavoritesState>(
              builder: (context, state) {
                bool isFavorite = false;
                state.whenOrNull(
                  loaded: (favorites) {
                    isFavorite = favorites.any((f) => f.id == widget.artistId);
                  },
                );
                
                return IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.white,
                  ),
                  onPressed: () {
                    if (isFavorite) {
                      context.read<FavoritesBloc>().add(FavoritesEvent.removeFavorite(widget.artistId));
                    } else {
                      final favorite = FavoriteModel(
                        id: profile.id,
                        fullName: profile.fullName,
                        category: profile.category ?? 'Makeup Artist',
                        profileImage: profile.profileImageUrl,
                        rating: profile.rating,
                        location: profile.city ?? 'Unknown',
                      );
                      context.read<FavoritesBloc>().add(FavoritesEvent.addFavorite(favorite));
                    }
                  },
                );
              },
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.screenPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        profile.category ?? 'Makeup Artist',
                        style: AppTypography.headlineMedium.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ),
                    if (profile.isJobSeeker)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: AppColors.success.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: AppColors.success),
                        ),
                        child: const Text(
                          'OPEN TO WORK',
                          style: TextStyle(
                            color: AppColors.success,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: AppSpacing.md),
                Row(
                  children: [
                    const Icon(Icons.star, color: AppColors.warning),
                    const SizedBox(width: 4),
                    Text(
                      '${profile.rating} (${profile.reviewCount} reviews)', 
                      style: AppTypography.bodyMedium,
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
                  profile.bio ?? 'No bio available.',
                  style: AppTypography.bodyMedium,
                ),
                const SizedBox(height: AppSpacing.xl),

                // BADGES SECTION
                if (profile.badges.isNotEmpty) ...[
                   Text('Badges & Certifications', style: AppTypography.titleLarge),
                   const SizedBox(height: AppSpacing.sm),
                   SizedBox(
                     height: 80,
                     child: ListView.separated(
                       scrollDirection: Axis.horizontal,
                       itemCount: profile.badges.length,
                       separatorBuilder: (_, __) => const SizedBox(width: 16),
                       itemBuilder: (context, index) {
                         final badge = profile.badges.reversed.toList()[index]; // Show newest first
                         return Container(
                           width: 260,
                           padding: const EdgeInsets.all(12),
                           decoration: BoxDecoration(
                             color: AppColors.surface,
                             borderRadius: BorderRadius.circular(12),
                             border: Border.all(color: AppColors.border),
                           ),
                           child: Row(
                             children: [
                               const Icon(Icons.verified, color: AppColors.primary, size: 32),
                               const SizedBox(width: 12),
                               Expanded(
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text(
                                       badge.name, 
                                       style: AppTypography.labelLarge,
                                       maxLines: 2, 
                                       overflow: TextOverflow.ellipsis
                                     ),
                                     Text(badge.type.toUpperCase(), style: AppTypography.labelSmall.copyWith(color: AppColors.textSecondary)),
                                   ],
                                 ),
                               ),
                             ],
                           ),
                         );
                       },
                     ),
                   ),
                   const SizedBox(height: AppSpacing.xl),
                ],

                // Bridal Bundles
                if (profile.bundles.isNotEmpty) ...[
                  _buildBundlesSection(profile.bundles),
                  const SizedBox(height: AppSpacing.xl),
                ],
                
                Text(
                  'Services',
                  style: AppTypography.titleLarge,
                ),
                const SizedBox(height: AppSpacing.sm),
                if (profile.services.isEmpty)
                   const Text('No services listed. Contact artist directly.'),
                ...profile.services.map((s) => _buildServiceItem(s)).toList(),
                
                const SizedBox(height: AppSpacing.md),
                
                // Show Manage Services button if user is owner
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                     return state.maybeWhen(
                       authenticated: (user) {
                         if (user.id == widget.artistId || user.id == profile.id) {
                            return SizedBox(
                              width: double.infinity,
                              child: OutlinedButton.icon(
                                onPressed: () {
                                  context.push('/artist/manage-services');
                                },
                                icon: const Icon(Icons.edit_note),
                                label: const Text('Manage Services'),
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                ),
                              ),
                            );
                         }
                         return const SizedBox.shrink();
                       },
                       orElse: () => const SizedBox.shrink(),
                     );
                  },
                ),

                const SizedBox(height: AppSpacing.xxl),
                SizedBox(
                  width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                                if (profile.services.isNotEmpty) {
                                  context.push(
                                  '/booking/${widget.artistId}',
                                  extra: {
                                    'serviceId': profile.services.first.id,
                                    'serviceName': profile.services.first.name,
                                    'price': '₹${profile.services.first.price}',
                                  },
                                );
                                }
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
                  create: (context) => ReviewBloc(
                    repository: ReviewRepository(ApiClient()),
                  )..add(ReviewEvent.fetchReviews(widget.artistId)),
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
    );
  }

  Widget _buildBundlesSection(List<dynamic> bundles) {
    if (bundles.isEmpty) return const SizedBox.shrink();
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
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: bundles.length,
            itemBuilder: (context, index) {
               final bundle = bundles[index];
               return Padding(
                 padding: const EdgeInsets.only(right: AppSpacing.md),
                 child: _buildBundleCard(bundle.name, '${bundle.items.length} services', '₹${bundle.discountPrice}'),
               );
            },
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

  Widget _buildServiceItem(ArtistService service) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(service.name, style: AppTypography.bodyLarge),
          Text('₹${service.price}', style: AppTypography.titleMedium),
        ],
      ),
    );
  }

  Widget _buildReviewCard(ReviewModel review) {
    return Card(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: review.userAvatar != null ? NetworkImage(review.userAvatar!) : null,
                      radius: 16,
                      child: review.userAvatar == null ? const Icon(Icons.person, size: 16) : null,
                    ),
                    const SizedBox(width: 8),
                    Text(review.userName, style: AppTypography.titleSmall),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 16),
                    const SizedBox(width: 4),
                    Text('${review.rating}', style: AppTypography.labelLarge),
                  ],
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(review.comment, style: AppTypography.bodyMedium),
            if (review.images.isNotEmpty) ...[
              const SizedBox(height: AppSpacing.sm),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: review.images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(review.images[index], width: 80, height: 80, fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
