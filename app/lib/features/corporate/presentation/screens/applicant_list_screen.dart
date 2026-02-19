
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../data/corporate_repository.dart';
import '../../bloc/campaign_bloc.dart';

class ApplicantListScreen extends StatelessWidget {
  final String campaignId;
  final String campaignTitle;

  const ApplicantListScreen({
    super.key,
    required this.campaignId,
    required this.campaignTitle,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CampaignBloc(repository: CorporateRepository())..add(FetchApplicantsEvent(campaignId)),
      child: Scaffold(
        appBar: AppBar(title: Text('Applicants: $campaignTitle')),
        body: BlocBuilder<CampaignBloc, CampaignState>(
          builder: (context, state) {
            if (state is CampaignLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is CampaignError) {
              return Center(child: Text('Error: ${state.message}'));
            } else if (state is ApplicantListLoaded) {
              final applicants = state.applicants;
              if (applicants.isEmpty) {
                return const Center(child: Text('No applicants yet.'));
              }
              return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: applicants.length,
                itemBuilder: (context, index) {
                  final applicant = applicants[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(applicant['portfolio_image']),
                      ),
                      title: Text(applicant['name'], style: const TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Rating: ${applicant['rating']} • Quote: ₹${applicant['quote']}'),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary, foregroundColor: Colors.white),
                        onPressed: () {
                           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Shortlisted!')));
                        },
                        child: const Text('Shortlist'),
                      ),
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
