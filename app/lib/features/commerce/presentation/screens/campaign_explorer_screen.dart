import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../../../shared/theme/app_typography.dart';
import '../bloc/brand_bloc.dart';
import '../bloc/brand_event.dart';
import '../bloc/brand_state.dart';
import '../domain/commerce_models.dart';

class CampaignExplorerScreen extends StatefulWidget {
  const CampaignExplorerScreen({super.key});

  @override
  State<CampaignExplorerScreen> createState() => _CampaignExplorerScreenState();
}

class _CampaignExplorerScreenState extends State<CampaignExplorerScreen> {
  @override
  void initState() {
    super.initState();
    context.read<BrandBloc>().add(const BrandEvent.fetchActiveCampaigns());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text('Brand Collaborations'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
      ),
      body: BlocListener<BrandBloc, BrandState>(
        listener: (context, state) {
          state.maybeWhen(
            actionSuccess: (msg) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
              Navigator.pop(context); // Close application dialog if open
            },
            error: (msg) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg))),
            orElse: () {},
          );
        },
        child: BlocBuilder<BrandBloc, BrandState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (_, campaigns) {
                if (campaigns.isEmpty) {
                  return const Center(child: Text('No active campaigns found. Check back later!'));
                }
                return ListView.builder(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  itemCount: campaigns.length,
                  itemBuilder: (context, index) {
                    final campaign = campaigns[index];
                    return _ExplorerCampaignCard(campaign: campaign);
                  },
                );
              },
              error: (msg) => Center(child: Text('Error: $msg')),
              orElse: () => const SizedBox(),
            );
          },
        ),
      ),
    );
  }
}

class _ExplorerCampaignCard extends StatelessWidget {
  final Campaign campaign;
  const _ExplorerCampaignCard({required this.campaign});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.primary, AppColors.primary.withOpacity(0.7)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            ),
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  campaign.title,
                  style: AppTypography.titleLarge.copyWith(color: AppColors.white),
                ),
                Text(
                  'Sponsored Collaboration',
                  style: AppTypography.bodySmall.copyWith(color: AppColors.white.withOpacity(0.8)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(campaign.description, style: AppTypography.bodyMedium),
                const SizedBox(height: AppSpacing.md),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _InfoChip(
                      icon: Icons.card_giftcard,
                      label: campaign.compensationType == 'PAID' 
                        ? '₹${campaign.compensationAmount.toStringAsFixed(0)}'
                        : 'Barter',
                      color: AppColors.secondary,
                    ),
                    _InfoChip(
                      icon: Icons.calendar_today,
                      label: campaign.endDate != null 
                        ? 'Ends ${DateFormat('dd MMM').format(campaign.endDate!)}'
                        : 'Limited Time',
                      color: AppColors.primary,
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.lg),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => _showApplyDialog(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text('Apply Now'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showApplyDialog(BuildContext context) {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('Apply for ${campaign.title}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Tell the brand why you are a great fit for this collaboration.'),
            const SizedBox(height: AppSpacing.md),
            TextField(
              controller: controller,
              maxLines: 4,
              decoration: const InputDecoration(
                hintText: 'Enter your cover letter...',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(dialogContext), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              context.read<BrandBloc>().add(BrandEvent.applyForCampaign(campaign.id, controller.text));
              Navigator.pop(dialogContext);
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _InfoChip({required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 6),
          Text(label, style: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
