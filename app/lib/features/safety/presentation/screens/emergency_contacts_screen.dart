import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import '../../bloc/safety_bloc.dart';
import '../../bloc/safety_event.dart';
import '../../bloc/safety_state.dart';

class EmergencyContactsScreen extends StatefulWidget {
  const EmergencyContactsScreen({super.key});

  @override
  State<EmergencyContactsScreen> createState() => _EmergencyContactsScreenState();
}

class _EmergencyContactsScreenState extends State<EmergencyContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SafetyBloc, SafetyState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (msg) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg))),
          success: (msg) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg))),
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Emergency Contacts'),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
        body: BlocBuilder<SafetyBloc, SafetyState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              contactsLoaded: (contacts) {
                if (contacts.isEmpty) {
                  return _buildEmptyState();
                }
                return ListView.builder(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  itemCount: contacts.length,
                  itemBuilder: (context, index) {
                    final contact = contacts[index];
                    return Card(
                      child: ListTile(
                        leading: const CircleAvatar(backgroundColor: Colors.redAccent, child: Icon(Icons.person, color: Colors.white)),
                        title: Text(contact.name, style: AppTypography.titleMedium),
                        subtitle: Text('${contact.relation} • ${contact.phoneNumber}'),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete_outline, color: Colors.red),
                          onPressed: () => _confirmDelete(contact.id),
                        ),
                      ),
                    );
                  },
                );
              },
              orElse: () => const Center(child: Text('Failed to load contacts')),
            );
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: _showAddContactDialog,
          backgroundColor: Colors.red,
          icon: const Icon(Icons.add, color: Colors.white),
          label: const Text('Add Contact', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.people_outline, size: 80, color: Colors.grey),
            const SizedBox(height: AppSpacing.md),
            Text('No Emergency Contacts', style: AppTypography.titleLarge),
            const SizedBox(height: AppSpacing.sm),
            const Text(
              'Add trusted contacts who will be notified in case you trigger an SOS alert.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  void _confirmDelete(String id) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Remove Contact?'),
        content: const Text('Are you sure you want to remove this emergency contact?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
          TextButton(
            onPressed: () {
              context.read<SafetyBloc>().add(SafetyEvent.removeEmergencyContact(id));
              Navigator.pop(ctx);
            },
            child: const Text('Remove', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  void _showAddContactDialog() {
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    final relController = TextEditingController();

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Add Emergency Contact'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(controller: nameController, decoration: const InputDecoration(labelText: 'Name', prefixIcon: Icon(Icons.person))),
            TextField(controller: phoneController, decoration: const InputDecoration(labelText: 'Phone', prefixIcon: Icon(Icons.phone))),
            TextField(controller: relController, decoration: const InputDecoration(labelText: 'Relation (e.g. Spouse)', prefixIcon: Icon(Icons.favorite))),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              if (nameController.text.isNotEmpty && phoneController.text.isNotEmpty) {
                context.read<SafetyBloc>().add(SafetyEvent.addEmergencyContact(
                  name: nameController.text,
                  phoneNumber: phoneController.text,
                  relation: relController.text,
                ));
                Navigator.pop(ctx);
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
