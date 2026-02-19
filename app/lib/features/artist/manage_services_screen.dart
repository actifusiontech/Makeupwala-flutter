import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_spacing.dart';
import '../../shared/theme/app_typography.dart';
import 'data/artist_repository.dart';
import '../auth/bloc/auth_bloc.dart';
import 'bloc/services/artist_services_bloc.dart';
import 'bloc/services/artist_services_event.dart';
import 'bloc/services/artist_services_state.dart';

class ManageServicesScreen extends StatefulWidget {
  const ManageServicesScreen({super.key});

  @override
  State<ManageServicesScreen> createState() => _ManageServicesScreenState();
}

class _ManageServicesScreenState extends State<ManageServicesScreen> {
  late ArtistServicesBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = ArtistServicesBloc(repository: ArtistRepository());
    _loadServices();
  }

  void _loadServices() {
    final user = context.read<AuthBloc>().state.maybeWhen(
      authenticated: (u) => u,
      orElse: () => null,
    );
    
    if (user != null) {
      _bloc.add(ArtistServicesEvent.loadServices(user.id));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: BlocConsumer<ArtistServicesBloc, ArtistServicesState>(
        listener: (context, state) {
          state.maybeWhen(
            actionSuccess: (message) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Manage Services'),
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
            ),
            body: state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (services) {
                if (services.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.design_services, size: 64, color: Colors.grey),
                        const SizedBox(height: 16),
                        Text('No services listed yet', style: AppTypography.titleMedium),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () => _showServiceDialog(context),
                          child: const Text('Add Your First Service'),
                        ),
                      ],
                    ),
                  );
                }
                return ListView.builder(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    final service = services[index];
                    return Card(
                      elevation: 2,
                      margin: const EdgeInsets.only(bottom: AppSpacing.md),
                      child: ListTile(
                        title: Text(service['name'] ?? 'Untitled', style: AppTypography.titleMedium),
                        subtitle: Text('${service['duration'] ?? 60} mins • ${service['description'] ?? ''}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('₹${service['price']}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            IconButton(
                              icon: const Icon(Icons.edit, color: Colors.blue),
                              onPressed: () => _showServiceDialog(context, service: service),
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () => _confirmDelete(context, service['id']),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              error: (message) => Center(child: Text('Error: $message')),
              orElse: () => const Center(child: CircularProgressIndicator()),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => _showServiceDialog(context),
              backgroundColor: AppColors.primary,
              child: const Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }

  void _showServiceDialog(BuildContext context, {Map<String, dynamic>? service}) {
    final isEditing = service != null;
    final nameController = TextEditingController(text: service?['name']);
    final priceController = TextEditingController(text: service?['price']?.toString());
    final durationController = TextEditingController(text: service?['duration']?.toString());
    final descriptionController = TextEditingController(text: service?['description']);
    
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(isEditing ? 'Edit Service' : 'Add New Service'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Service Name'),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: priceController,
                decoration: const InputDecoration(labelText: 'Price (₹)'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 12),
              TextField(
                controller: durationController,
                decoration: const InputDecoration(labelText: 'Duration (mins)'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 12),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
                maxLines: 2,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              final data = {
                'name': nameController.text,
                'price': double.tryParse(priceController.text) ?? 0.0,
                'duration': int.tryParse(durationController.text) ?? 60,
                'description': descriptionController.text,
              };

              if (isEditing) {
                _bloc.add(ArtistServicesEvent.updateService(service['id'], data));
              } else {
                _bloc.add(ArtistServicesEvent.addService(data));
              }
              Navigator.pop(dialogContext);
            },
            child: Text(isEditing ? 'Update' : 'Add'),
          ),
        ],
      ),
    );
  }

  void _confirmDelete(BuildContext context, String serviceId) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Delete Service?'),
        content: const Text('Are you sure you want to remove this service?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              _bloc.add(ArtistServicesEvent.deleteService(serviceId));
              Navigator.pop(dialogContext);
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }
}
