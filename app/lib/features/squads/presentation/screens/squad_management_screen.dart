import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/core/network/api_client.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:app/shared/theme/app_typography.dart';
import '../../data/squad_repository.dart';
import '../../bloc/squad_management_bloc.dart';

class SquadManagementScreen extends StatelessWidget {
  const SquadManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SquadManagementBloc(
        repository: SquadRepository(ApiClient()),
      )..add(const SquadManagementEvent.loadMySquad()),
      child: const _SquadManagementView(),
    );
  }
}

class _SquadManagementView extends StatelessWidget {
  const _SquadManagementView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Squad'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_add),
            onPressed: () => _showInviteDialog(context),
          ),
        ],
      ),
      body: BlocConsumer<SquadManagementBloc, SquadManagementState>(
        listener: (context, state) {
          if (state.successMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.successMessage!), backgroundColor: AppColors.success),
            );
          }
          if (state.error != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error!), backgroundColor: AppColors.error),
            );
          }
        },
        builder: (context, state) {
          if (state.isLoading && state.members.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          
          if (state.members.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   const Icon(Icons.group_off, size: 64, color: Colors.grey),
                   const SizedBox(height: 16),
                   const Text('No squad members yet.'),
                   const SizedBox(height: 8),
                   ElevatedButton.icon(
                     onPressed: () => _showInviteDialog(context),
                     icon: const Icon(Icons.add),
                     label: const Text('Invite Member'),
                   ),
                ],
              ),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.all(AppSpacing.md),
            itemCount: state.members.length,
            separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
            itemBuilder: (context, index) {
              final member = state.members[index];
              return _buildMemberCard(context, member);
            },
          );
        },
      ),
    );
  }

  Widget _buildMemberCard(BuildContext context, dynamic member) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(member['avatar']),
        ),
        title: Text(member['name'], style: AppTypography.titleMedium),
        subtitle: Text('${member['role']} • ${member['status']}'),
        trailing: IconButton(
          icon: const Icon(Icons.remove_circle_outline, color: Colors.red),
          onPressed: () {
            // Confirm dialog
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: const Text('Remove Member'),
                content: Text('Are you sure you want to remove ${member['name']}?'),
                actions: [
                  TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
                  TextButton(
                    onPressed: () {
                      context.read<SquadManagementBloc>().add(SquadManagementEvent.removeMember(memberId: member['id']));
                      Navigator.pop(context);
                    },
                    child: const Text('Remove', style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _showInviteDialog(BuildContext context) {
    final emailController = TextEditingController();
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Invite Squad Member'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Enter email or phone to invite.'),
            const SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email / Phone',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              if (emailController.text.isNotEmpty) {
                 context.read<SquadManagementBloc>().add(SquadManagementEvent.inviteMember(email: emailController.text));
                 Navigator.pop(context);
              }
            },
            child: const Text('Send Invite'),
          ),
        ],
      ),
    );
  }
}
