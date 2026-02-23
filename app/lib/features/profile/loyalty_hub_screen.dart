import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../shared/theme/app_colors.dart';
import '../../../shared/theme/app_typography.dart';
import '../../../shared/theme/app_spacing.dart';
import 'bloc/profile_bloc.dart';
import 'data/profile_repository.dart';
import '../../../core/models/rewards.dart';
import '../../../shared/widgets/shimmer_loaders.dart';

class LoyaltyHubScreen extends StatefulWidget {
  const LoyaltyHubScreen({super.key});

  @override
  State<LoyaltyHubScreen> createState() => _LoyaltyHubScreenState();
}

class _LoyaltyHubScreenState extends State<LoyaltyHubScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(repository: ProfileRepository())
        ..add(const ProfileEvent.fetchProfile(isArtist: false))
        ..add(const ProfileEvent.fetchRewards())
        ..add(const ProfileEvent.fetchTransactions()),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              _buildSliverAppBar(context),
            ];
          },
          body: Column(
            children: [
              _buildTabBar(),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    const _RewardsCatalogView(),
                    const _TransactionHistoryView(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 220,
      pinned: true,
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      title: const Text('GLOW Rewards'),
      flexibleSpace: FlexibleSpaceBar(
        background: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (user, balance) => _buildHeaderContent(balance),
              loading: () => const Center(child: CircularProgressIndicator(color: Colors.white)),
              orElse: () => const SizedBox(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildHeaderContent(LoyaltyBalance? balance) {
    if (balance == null) return const SizedBox();
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.primary, AppColors.primary.withOpacity(0.8)],
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.stars, color: Colors.amber, size: 32),
                const SizedBox(width: AppSpacing.sm),
                Text(
                  '${balance.balance}',
                  style: AppTypography.displayMedium.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              'Glow Coins',
              style: AppTypography.bodyLarge.copyWith(color: Colors.white.withOpacity(0.9)),
            ),
            const SizedBox(height: AppSpacing.lg),
            _buildTierInfo(balance),
          ],
        ),
      ),
    );
  }

  Widget _buildTierInfo(LoyaltyBalance balance) {
    final int currentTier = balance.tier;
    // Calculate progress to next tier (simplified)
    final double progress = (balance.totalBookings % 10) / 10.0;
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tier $currentTier', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              Text('Tier ${currentTier + 1}', style: TextStyle(color: Colors.white.withOpacity(0.7))),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.white.withOpacity(0.2),
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.amber),
              minHeight: 8,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '${10 - (balance.totalBookings % 10)} bookings to next tier',
            style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      color: Colors.white,
      child: TabBar(
        controller: _tabController,
        labelColor: AppColors.primary,
        unselectedLabelColor: AppColors.textSecondary,
        indicatorColor: AppColors.primary,
        indicatorWeight: 3,
        tabs: const [
          Tab(text: 'REWARDS'),
          Tab(text: 'HISTORY'),
        ],
      ),
    );
  }
}

class _RewardsCatalogView extends StatelessWidget {
  const _RewardsCatalogView();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.maybeWhen(
          rewardRedeemed: (redemption) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Reward redeemed! Code: ${redemption.code ?? "Check History"}'),
                backgroundColor: AppColors.success,
              ),
            );
            // Refresh balance
            context.read<ProfileBloc>().add(const ProfileEvent.fetchProfile(isArtist: false));
          },
          error: (msg) {
             ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(msg), backgroundColor: AppColors.error),
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          rewardsLoaded: (rewards) {
            if (rewards.isEmpty) {
              return const Center(child: Text('No rewards available at the moment.'));
            }
            return GridView.builder(
              padding: const EdgeInsets.all(AppSpacing.md),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: AppSpacing.md,
                mainAxisSpacing: AppSpacing.md,
              ),
              itemCount: rewards.length,
              itemBuilder: (context, index) => _buildRewardCard(context, rewards[index]),
            );
          },
          loading: () => ListView.generate(4, (index) => ShimmerLoaders.listTile()),
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  Widget _buildRewardCard(BuildContext context, RewardItem reward) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: AppColors.primary.withOpacity(0.1),
              child: reward.imageUrl != null 
                ? Image.network(reward.imageUrl!, fit: BoxFit.cover)
                : const Icon(Icons.card_giftcard, size: 40, color: AppColors.primary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(reward.title, style: AppTypography.titleSmall, maxLines: 1),
                Text(
                  '${reward.pointsCost} coins',
                  style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold, fontSize: 12),
                ),
                const SizedBox(height: AppSpacing.xs),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => _showRedemptionDialog(context, reward),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(0, 32),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: const Text('REDEEM', style: TextStyle(fontSize: 12)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showRedemptionDialog(BuildContext context, RewardItem reward) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Confirm Redemption'),
        content: Text('Are you sure you want to redeem "${reward.title}" for ${reward.pointsCost} Glow Coins?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(dialogContext), child: const Text('CANCEL')),
          ElevatedButton(
            onPressed: () {
              context.read<ProfileBloc>().add(ProfileEvent.redeemReward(reward.id));
              Navigator.pop(dialogContext);
            },
            child: const Text('REDEEM'),
          ),
        ],
      ),
    );
  }
}

class _TransactionHistoryView extends StatelessWidget {
  const _TransactionHistoryView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
          transactionsLoaded: (transactions) {
            if (transactions.isEmpty) {
              return const Center(child: Text('No transaction history.'));
            }
            return ListView.separated(
              padding: const EdgeInsets.all(AppSpacing.md),
              itemCount: transactions.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) => _buildTransactionItem(transactions[index]),
            );
          },
          loading: () => ListView.generate(6, (index) => ShimmerLoaders.listTile()),
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  Widget _buildTransactionItem(LoyaltyTransaction tx) {
    final bool isEarn = tx.transactionType == 'EARN';
    final date = DateFormat('MMM dd, yyyy').format(tx.createdAt);
    
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: (isEarn ? Colors.green : Colors.red).withOpacity(0.1),
        child: Icon(
          isEarn ? Icons.add : Icons.remove,
          color: isEarn ? Colors.green : Colors.red,
        ),
      ),
      title: Text(tx.description, style: AppTypography.bodyLarge),
      subtitle: Text(date, style: AppTypography.bodySmall),
      trailing: Text(
        '${isEarn ? "+" : ""}${tx.points}',
        style: AppTypography.titleMedium.copyWith(
          color: isEarn ? Colors.green : Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
