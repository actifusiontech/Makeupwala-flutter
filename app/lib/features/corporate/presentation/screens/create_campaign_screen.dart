
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../data/corporate_repository.dart';
import '../../bloc/campaign_bloc.dart';

class CreateCampaignScreen extends StatefulWidget {
  const CreateCampaignScreen({super.key});

  @override
  State<CreateCampaignScreen> createState() => _CreateCampaignScreenState();
}

class _CreateCampaignScreenState extends State<CreateCampaignScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _budgetController = TextEditingController();
  final _requirementsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CampaignBloc(repository: CorporateRepository()),
      child: BlocListener<CampaignBloc, CampaignState>(
        listener: (context, state) {
          if (state is CampaignSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Campaign Created: ${state.campaignId}')));
            Navigator.pop(context);
          } else if (state is CampaignError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: ${state.message}')));
          }
        },
        child: Scaffold(
          appBar: AppBar(title: const Text('Create New Campaign')),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                   TextFormField(
                     controller: _titleController,
                     decoration: const InputDecoration(labelText: 'Campaign Title', hintText: 'e.g. Summer Bridal Collection Launch'),
                     validator: (v) => v?.isEmpty ?? true ? 'Required' : null,
                   ),
                   const SizedBox(height: 16),
                   TextFormField(
                     controller: _budgetController,
                     decoration: const InputDecoration(labelText: 'Total Budget (INR)', prefixText: '₹ '),
                     keyboardType: TextInputType.number,
                     validator: (v) => v?.isEmpty ?? true ? 'Required' : null,
                   ),
                   const SizedBox(height: 16),
                   TextFormField(
                     controller: _requirementsController,
                     decoration: const InputDecoration(labelText: 'Requirements', hintText: 'Describe artist skills, look, etc.'),
                     maxLines: 4,
                     validator: (v) => v?.isEmpty ?? true ? 'Required' : null,
                   ),
                   const Spacer(),
                   BlocBuilder<CampaignBloc, CampaignState>(
                     builder: (context, state) {
                       final isLoading = state is CampaignLoading;
                       return CustomButton(
                         text: isLoading ? 'Creating...' : 'Launch Campaign',
                         isLoading: isLoading,
                         isFullWidth: true,
                         onPressed: () {
                           if (_formKey.currentState!.validate()) {
                             context.read<CampaignBloc>().add(CreateCampaignEvent({
                               'title': _titleController.text,
                               'budget': double.tryParse(_budgetController.text) ?? 0,
                               'requirements': _requirementsController.text,
                             }));
                           }
                         },
                       );
                     },
                   ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
