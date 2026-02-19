
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../data/corporate_repository.dart';
import '../../bloc/campaign_bloc.dart';
import 'applicant_list_screen.dart';

class CampaignListScreen extends StatelessWidget {
  const CampaignListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CampaignBloc(repository: CorporateRepository())..add(FetchCampaignsEvent()),
      child: Scaffold(
        appBar: AppBar(title: const Text('My Campaigns')),
        body: BlocBuilder<CampaignBloc, CampaignState>(
          builder: (context, state) {
            if (state is CampaignLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is CampaignError) {
              return Center(child: Text('Error: ${state.message}'));
            } else if (state is CampaignListLoaded) {
              final campaigns = state.campaigns;
              if (campaigns.isEmpty) {
                return const Center(child: Text('No active campaigns.'));
              }
              return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: campaigns.length,
                itemBuilder: (context, index) {
                  final campaign = campaigns[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: ListTile(
                      title: Text(campaign['title'], style: const TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Budget: ₹${campaign['budget']} • Applicants: ${campaign['applicants_count']}'),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ApplicantListScreen(
                              campaignId: campaign['id'],
                              campaignTitle: campaign['title'],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
