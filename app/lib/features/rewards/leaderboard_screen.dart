import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/models/rewards.dart';
import '../profile/data/profile_repository.dart';
import '../profile/bloc/profile_bloc.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  late Future<List<LeaderboardEntry>> _leaderboardFuture;
  final _repository = ProfileRepository();

  @override
  void initState() {
    super.initState();
    _leaderboardFuture = _repository.getLeaderboard();
  }

  @override
  Widget build(BuildContext context) {
    // Get current user ID to highlight rank
    final currentState = context.read<ProfileBloc>().state;
    final currentUserId = currentState.maybeWhen(
      loaded: (user, _) => user.id,
      orElse: () => null,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Referrers'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: FutureBuilder<List<LeaderboardEntry>>(
        future: _leaderboardFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No referrals yet. Be the first!'));
          }

          final entries = snapshot.data!;
          return ListView.separated(
            padding: const EdgeInsets.all(AppSpacing.md),
            itemCount: entries.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              final entry = entries[index];
              final isMe = entry.userId == currentUserId;
              
              return Container(
                decoration: isMe
                    ? BoxDecoration(
                        color: AppColors.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
                        border: Border.all(color: AppColors.primary.withOpacity(0.3)),
                      )
                    : null,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: _getRankColor(entry.rank),
                    foregroundColor: Colors.white,
                    child: Text('#${entry.rank}'),
                  ),
                  title: Text(
                    isMe ? '${entry.userName} (You)' : entry.userName,
                    style: AppTypography.titleSmall.copyWith(
                      fontWeight: isMe ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${entry.referralCount} Referrals',
                        style: AppTypography.bodySmall.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${entry.pointsEarned} Pts',
                        style: AppTypography.bodySmall.copyWith(color: AppColors.success),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: ElevatedButton(
          onPressed: () {
            // Check if share_plus is implemented or just show snackbar for now
            // Or navigate back to profile to use the share button there
             ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Go to Profile to share your code!')),
              );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
            ),
          ),
          child: const Text('Invite Friends', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }

  Color _getRankColor(int rank) {
    switch (rank) {
      case 1:
        return Colors.amber; // Gold
      case 2:
        return Colors.grey; // Silver
      case 3:
        return Colors.brown; // Bronze
      default:
        return AppColors.primary;
    }
  }
}
