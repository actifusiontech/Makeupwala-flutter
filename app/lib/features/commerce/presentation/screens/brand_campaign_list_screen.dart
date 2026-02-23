import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../bloc/brand_bloc.dart';
import '../../bloc/brand_event.dart';
import '../../bloc/brand_state.dart';
import '../../domain/commerce_models.dart';

class BrandCampaignListScreen extends StatefulWidget {
  const BrandCampaignListScreen({super.key});

  @override
  State<BrandCampaignListScreen> createState() => _BrandCampaignListScreenState();
}

class _BrandCampaignListScreenState extends State<BrandCampaignListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<BrandBloc>().add(const BrandEvent.fetchCampaigns());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Campaigns'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
      ),
      body: BlocBuilder<BrandBloc, BrandState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (_, campaigns) {
              if (campaigns.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.campaign_outlined, size: 64, color: AppColors.textSecondary),
                      const SizedBox(height: AppSpacing.md),
                      const Text('No campaigns created yet'),
                      const SizedBox(height: AppSpacing.lg),
                      ElevatedButton(
                        onPressed: () {
                           ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Campaign Creation will be available in V2')),
                          );
                        },
                        child: const Text('Create Your First Campaign'),
                      ),
                    ],
                  ),
                );
              }

              return ListView.builder(
                padding: const EdgeInsets.all(AppSpacing.md),
                itemCount: campaigns.length,
                itemBuilder: (context, index) {
                  final campaign = campaigns[index];
                  return _CampaignCard(campaign: campaign);
                },
              );
            },
            error: (msg) => Center(child: Text('Error: $msg')),
            orElse: () => const SizedBox(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Campaign Creation will be available in V2')),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: AppColors.primary,
      ),
    );
  }
}

class _CampaignCard extends StatelessWidget {
  final Campaign campaign;
  const _CampaignCard({required this.campaign});

  @override
  Widget build(BuildContext context) {
    final startDate = campaign.startDate != null ? DateFormat('dd MMM').format(campaign.startDate!) : 'TBD';
    final endDate = campaign.endDate != null ? DateFormat('dd MMM').format(campaign.endDate!) : 'TBD';

    return Card(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(campaign.title, style: AppTypography.titleMedium),
            subtitle: Text('Duration: $startDate - $endDate'),
            trailing: _StatusBadge(status: campaign.status),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
            child: Text(
              campaign.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTypography.bodySmall.copyWith(color: AppColors.textSecondary),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.card_giftcard, size: 16, color: AppColors.secondary),
                    const SizedBox(width: 4),
                    Text(
                      campaign.compensationType == 'PAID' 
                        ? '₹${campaign.compensationAmount.toStringAsFixed(0)}'
                        : 'Barter',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Application viewing will be available in V2')),
                    );
                  },
                  child: const Text('View Applications'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final String status;
  const _StatusBadge({required this.status});

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (status.toUpperCase()) {
      case 'ACTIVE': color = AppColors.success; break;
      case 'CLOSED': color = Colors.red; break;
      case 'COMPLETED': color = AppColors.primary; break;
      default: color = AppColors.textSecondary;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        status.toUpperCase(),
        style: TextStyle(color: color, fontSize: 10, fontWeight: FontWeight.bold),
      ),
    );
  }
}
