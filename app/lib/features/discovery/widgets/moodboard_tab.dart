import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../shared/theme/app_colors.dart';
import '../../../shared/theme/app_spacing.dart';
import '../../../shared/theme/app_typography.dart';
import '../bloc/moodboard/moodboard_bloc.dart';
import '../bloc/moodboard/moodboard_event.dart';
import '../bloc/moodboard/moodboard_state.dart';

class MoodboardTab extends StatelessWidget {
  final String userId;

  const MoodboardTab({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    // Trigger load on build
    context.read<MoodboardBloc>().add(MoodboardEvent.loadMoodboard(userId));

    return BlocConsumer<MoodboardBloc, MoodboardState>(
      listener: (context, state) {
        state.maybeWhen(
          actionSuccess: (message) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
          },
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (items) {
            if (items.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.favorite_border, size: 64, color: Colors.grey),
                    const SizedBox(height: 16),
                    Text('Your moodboard is empty', style: AppTypography.titleMedium),
                    const SizedBox(height: 8),
                    const Text('Save looks from the Explore tab to see them here.'),
                  ],
                ),
              );
            }
            return MasonryGridView.count(
              padding: const EdgeInsets.all(AppSpacing.md),
              crossAxisCount: 2,
              mainAxisSpacing: AppSpacing.md,
              crossAxisSpacing: AppSpacing.md,
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return _buildMoodboardItem(context, item);
              },
            );
          },
          error: (message) => Center(child: Text('Error: $message')),
          orElse: () => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }

  Widget _buildMoodboardItem(BuildContext context, Map<String, dynamic> item) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                item['image_url'] ?? 'https://via.placeholder.com/150',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 150, 
                  color: Colors.grey[300],
                  child: const Center(child: Icon(Icons.broken_image)),
                ),
              ),
              if (item['caption'] != null && item['caption'].toString().isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  item['caption'],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.bodySmall.copyWith(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Positioned(
            right: 8,
            top: 8,
            child: GestureDetector(
              onTap: () {
                if (item['id'] != null) {
                  context.read<MoodboardBloc>().add(MoodboardEvent.removeFromMoodboard(userId, item['id']));
                }
              },
              child: CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.8),
                radius: 14,
                child: const Icon(Icons.delete, color: Colors.red, size: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
