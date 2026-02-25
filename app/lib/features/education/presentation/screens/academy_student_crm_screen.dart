import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../bloc/education_bloc.dart';
import '../../bloc/education_event.dart';
import '../../bloc/education_state.dart';

class AcademyStudentCrmScreen extends StatefulWidget {
  final String instituteId;

  const AcademyStudentCrmScreen({super.key, required this.instituteId});

  @override
  State<AcademyStudentCrmScreen> createState() => _AcademyStudentCrmScreenState();
}

class _AcademyStudentCrmScreenState extends State<AcademyStudentCrmScreen> {
  @override
  void initState() {
    super.initState();
    context.read<EducationBloc>().add(EducationEvent.fetchStudentLeads(widget.instituteId));
  }

  void _showAddLeadDialog() {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final phoneController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add New Lead'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(labelText: 'Phone'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if (nameController.text.isNotEmpty) {
                context.read<EducationBloc>().add(
                  EducationEvent.createStudentLead(widget.instituteId, {
                    'institute_id': widget.instituteId,
                    'name': nameController.text,
                    'email': emailController.text,
                    'phone': phoneController.text,
                  }),
                );
                Navigator.pop(context);
              }
            },
            child: const Text('Add Lead'),
          ),
        ],
      ),
    );
  }

  void _updateLeadStatus(String leadId, String currentStatus) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Wrap(
        children: [
          const ListTile(
            title: Text('Update Lead Status', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          _statusOption(leadId, 'new', currentStatus),
          _statusOption(leadId, 'contacted', currentStatus),
          _statusOption(leadId, 'enrolled', currentStatus),
          _statusOption(leadId, 'closed', currentStatus),
        ],
      ),
    );
  }

  ListTile _statusOption(String leadId, String status, String currentStatus) {
    return ListTile(
      title: Text(status.toUpperCase()),
      trailing: currentStatus == status ? const Icon(Icons.check, color: Colors.teal) : null,
      onTap: () {
        context.read<EducationBloc>().add(EducationEvent.updateStudentLeadStatus(leadId, status));
        Navigator.pop(context);
        Future.delayed(const Duration(milliseconds: 300), () {
          if (mounted) {
             context.read<EducationBloc>().add(EducationEvent.fetchStudentLeads(widget.instituteId));
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student CRM / Leads'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: BlocConsumer<EducationBloc, EducationState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))),
            actionSuccess: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))),
            orElse: () {},
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);

          return RefreshIndicator(
            onRefresh: () async {
              context.read<EducationBloc>().add(EducationEvent.fetchStudentLeads(widget.instituteId));
            },
            child: Stack(
              children: [
                _buildLeadsList(state),
                if (isLoading) const Center(child: CircularProgressIndicator()),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showAddLeadDialog,
        icon: const Icon(Icons.person_add),
        label: const Text('New Lead'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
    );
  }

  Widget _buildLeadsList(EducationState state) {
    return state.maybeWhen(
      studentLeadsLoaded: (leads) {
        if (leads.isEmpty) {
          return const Center(child: Text('No leads found. Start adding people!'));
        }
        return ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: leads.length,
          itemBuilder: (context, index) {
            final lead = leads[index];
            final statusColor = _getStatusColor(lead['status'] ?? 'new');
            return Card(
              margin: const EdgeInsets.only(bottom: 12.0),
              elevation: 2,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: statusColor.withValues(alpha: 0.2),
                  child: Icon(Icons.person, color: statusColor),
                ),
                title: Text(lead['name'] ?? '', style: AppTypography.titleMedium),
                subtitle: Text('${lead['phone'] ?? ''}\n${lead['email'] ?? ''}'),
                isThreeLine: true,
                trailing: InkWell(
                  onTap: () => _updateLeadStatus(lead['id'], lead['status']),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: statusColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      (lead['status'] ?? 'NEW').toString().toUpperCase(),
                      style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
      orElse: () => const Center(child: Text('Loading leads...')),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'contacted':
        return Colors.orange;
      case 'enrolled':
        return Colors.green;
      case 'closed':
        return Colors.red;
      case 'new':
      default:
        return Colors.blue;
    }
  }
}
