import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import '../bloc/favorites_bloc.dart';
import '../bloc/favorites_event.dart';
import '../bloc/favorites_state.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favorites'),
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.textPrimary,
        elevation: 0,
      ),
      backgroundColor: AppColors.background,
      body: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text('Error: $message')),
            loaded: (favorites) {
              if (favorites.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite_border, size: 64, color: AppColors.grey400),
                      const SizedBox(height: AppSpacing.md),
                      Text('No favorites yet', style: AppTypography.titleMedium),
                      const SizedBox(height: AppSpacing.sm),
                      Text(
                        'Save artists you love to find them easily later.',
                        style: AppTypography.bodyMedium.copyWith(color: AppColors.textSecondary),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }

              return ListView.builder(
                padding: const EdgeInsets.all(AppSpacing.md),
                itemCount: favorites.length,
                itemBuilder: (context, index) {
                  final artist = favorites[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: AppSpacing.md),
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    elevation: 2,
                    color: AppColors.cardBackground,
                    child: InkWell(
                      onTap: () {
                         context.push('/artist/${artist.id}');
                      },
                      child: Row(
                        children: [
                          // Image
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.network(
                              artist.profileImage ?? 'https://via.placeholder.com/100',
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) => Container(
                                color: AppColors.grey200,
                                child: const Icon(Icons.person, color: AppColors.grey400),
                              ),
                            ),
                          ),
                          
                          // Details
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(AppSpacing.md),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    artist.fullName,
                                    style: AppTypography.titleMedium,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    artist.category,
                                    style: AppTypography.bodySmall.copyWith(color: AppColors.textSecondary),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      const Icon(Icons.star, size: 14, color: AppColors.warning), // Changed to warning (Amber)
                                      const SizedBox(width: 4),
                                      Text(
                                        '${artist.rating}',
                                        style: AppTypography.bodySmall,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          
                          // Remove Button
                          IconButton(
                            icon: const Icon(Icons.favorite, color: AppColors.primary),
                            onPressed: () {
                              context.read<FavoritesBloc>().add(FavoritesEvent.removeFavorite(artist.id));
                            },
                          ),
                          const SizedBox(width: 4),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
