import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../bloc/customer_crm/customer_crm_bloc.dart';
import 'package:intl/intl.dart';

class StudioCustomerCrmScreen extends StatefulWidget {
  final String studioId;

  const StudioCustomerCrmScreen({super.key, required this.studioId});

  @override
  State<StudioCustomerCrmScreen> createState() => _StudioCustomerCrmScreenState();
}

class _StudioCustomerCrmScreenState extends State<StudioCustomerCrmScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CustomerCrmBloc>().add(CustomerCrmEvent.getCustomers(widget.studioId));
  }

  void _showAddCustomerDialog() {
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    final emailController = TextEditingController();
    final prefController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('New Customer'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Full Name'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email Address'),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: prefController,
                decoration: const InputDecoration(labelText: 'Preferences (e.g. Skin Type, Allergies)'),
                maxLines: 2,
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
                context.read<CustomerCrmBloc>().add(
                  CustomerCrmEvent.createCustomer(widget.studioId, {
                    'studio_id': widget.studioId,
                    'name': nameController.text,
                    'phone': phoneController.text,
                    'email': emailController.text,
                    'preferences': prefController.text,
                  }),
                );
                Navigator.pop(context);
              }
            },
            child: const Text('Add Customer'),
          ),
        ],
      ),
    );
  }

  void _showRecordVisitDialog(String customerId) {
    final amtController = TextEditingController();
    final serviceController = TextEditingController();
    final noteController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Record Visit'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: serviceController,
                decoration: const InputDecoration(labelText: 'Services Rendered'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: amtController,
                decoration: const InputDecoration(labelText: 'Amount Spent (₹)'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: noteController,
                decoration: const InputDecoration(labelText: 'Session Notes'),
                maxLines: 2,
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
              final amt = double.tryParse(amtController.text) ?? 0.0;
              context.read<CustomerCrmBloc>().add(
                CustomerCrmEvent.recordCustomerVisit(customerId, widget.studioId, {
                  'customer_id': customerId,
                  'studio_id': widget.studioId,
                  'services': serviceController.text,
                  'amount_spent': amt,
                  'notes': noteController.text,
                }),
              );
              Navigator.pop(context);
            },
            child: const Text('Log Visit'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Directory'),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
      ),
      body: BlocConsumer<CustomerCrmBloc, CustomerCrmState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))),
            actionSuccess: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))),
            orElse: () {},
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);

          return Stack(
            children: [
              _buildCustomerList(state),
              if (isLoading) const Center(child: CircularProgressIndicator()),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showAddCustomerDialog,
        icon: const Icon(Icons.person_add),
        label: const Text('New Client'),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
      ),
    );
  }

  Widget _buildCustomerList(CustomerCrmState state) {
    return state.maybeWhen(
      customersLoaded: (customers) {
        if (customers.isEmpty) {
          return const Center(child: Text('No customers in directory.'));
        }
        return ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: customers.length,
          itemBuilder: (context, index) {
            final cust = customers[index];
            final ltv = cust['lifetime_value'] ?? 0.0;
            final lastVisitStr = cust['last_visit'];
            String lastVisitTxt = 'First Visit Pending';

            if (lastVisitStr != null) {
              try {
                final dt = DateTime.parse(lastVisitStr);
                lastVisitTxt = 'Last: ${DateFormat.yMd().format(dt)}';
              } catch (_) {}
            }

            return Card(
              margin: const EdgeInsets.only(bottom: 12.0),
              elevation: 2,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.pinkAccent.withOpacity(0.2),
                  child: Text(cust['name'][0].toUpperCase(), style: const TextStyle(color: Colors.pinkAccent)),
                ),
                title: Text(cust['name'], style: AppTypography.titleMedium),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cust['phone'] ?? 'No Phone'),
                    const SizedBox(height: 4),
                    Text('LTV: ₹$ltv • $lastVisitTxt', style: const TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.history, color: Colors.indigo),
                  tooltip: 'Record Visit',
                  onPressed: () => _showRecordVisitDialog(cust['id']),
                ),
                isThreeLine: true,
              ),
            );
          },
        );
      },
      orElse: () => const Center(child: Text('Loading CRM Data...')),
    );
  }
}
