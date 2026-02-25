import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../bloc/education_bloc.dart';
import '../../bloc/education_event.dart';
import '../../bloc/education_state.dart';
import 'package:intl/intl.dart';
import 'package:app/core/services/pdf_service.dart';

class AcademyFeeManagementScreen extends StatefulWidget {
  final String instituteId;

  const AcademyFeeManagementScreen({super.key, required this.instituteId});

  @override
  State<AcademyFeeManagementScreen> createState() => _AcademyFeeManagementScreenState();
}

class _AcademyFeeManagementScreenState extends State<AcademyFeeManagementScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabChange);
    context.read<EducationBloc>().add(EducationEvent.fetchFeeStructures(widget.instituteId));
  }

  void _handleTabChange() {
    if (_tabController.index == 1) {
      context.read<EducationBloc>().add(EducationEvent.fetchAllInstituteFees(widget.instituteId));
    }
    setState(() {});
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  void _showCreateFeeDialog() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Create fee dialog not yet implemented.')),
    );
  }

  void _showRecordPaymentDialog() {
    final studentIdController = TextEditingController();
    final amountController = TextEditingController();
    final methodController = TextEditingController();
    final refController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Record Fee Payment'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: studentIdController,
                decoration: const InputDecoration(labelText: 'Student ID (UUID)'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Amount (₹)'),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(labelText: 'Payment Method'),
                items: ['Cash', 'UPI', 'Bank Transfer', 'Card']
                    .map((m) => DropdownMenuItem(value: m, child: Text(m)))
                    .toList(),
                onChanged: (val) => methodController.text = val ?? '',
              ),
              const SizedBox(height: 16),
              TextField(
                controller: refController,
                decoration: const InputDecoration(labelText: 'Reference ID (e.g. UPI Ref)'),
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
              final amount = double.tryParse(amountController.text) ?? 0.0;
              if (studentIdController.text.isNotEmpty && amount > 0) {
                context.read<EducationBloc>().add(
                  EducationEvent.recordFeePayment({
                    'institute_id': widget.instituteId,
                    'student_id': studentIdController.text,
                    'amount': amount,
                    'payment_method': methodController.text,
                    'reference_id': refController.text,
                  }),
                );
                Navigator.pop(context);
              }
            },
            child: const Text('Record'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fee Management'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          indicatorColor: Colors.amber,
          tabs: const [
            Tab(text: 'Fee Structures'),
            Tab(text: 'Payment Logs'),
          ],
        ),
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

          return TabBarView(
            controller: _tabController,
            children: [
              // Tab 1: Fee Structures
              RefreshIndicator(
                onRefresh: () async {
                  context.read<EducationBloc>().add(EducationEvent.fetchFeeStructures(widget.instituteId));
                },
                child: Stack(
                  children: [
                    _buildFeeStructuresList(state),
                    if (isLoading) const Center(child: CircularProgressIndicator()),
                  ],
                ),
              ),
              // Tab 2: Payment Logs
              RefreshIndicator(
                onRefresh: () async {
                  context.read<EducationBloc>().add(EducationEvent.fetchAllInstituteFees(widget.instituteId));
                },
                child: Stack(
                  children: [
                    _buildPaymentLogsList(state),
                    if (isLoading) const Center(child: CircularProgressIndicator()),
                  ],
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _tabController.index == 0 ? _showCreateFeeDialog : _showRecordPaymentDialog,
        icon: const Icon(Icons.add),
        label: Text(_tabController.index == 0 ? 'New Fee' : 'Record Payment'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
    );
  }

  Widget _buildPaymentLogsList(EducationState state) {
    return state.maybeWhen(
      studentFeesLoaded: (payments) {
        if (payments.isEmpty) {
          return const Center(child: Text('No payment logs found. Record a payment to see it here.'));
        }
        return ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: payments.length,
          itemBuilder: (context, index) {
            final payment = payments[index];
            final currencyFormat = NumberFormat.currency(locale: 'en_IN', symbol: '₹');
            final date = DateTime.tryParse(payment['payment_date'] ?? '') ?? DateTime.now();

            return Card(
              margin: const EdgeInsets.only(bottom: 12.0),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Icon(Icons.receipt_long, color: Colors.white),
                ),
                title: Text('Amount: ${currencyFormat.format(payment['amount'] ?? 0)}'),
                subtitle: Text('Method: ${payment['payment_method']} | Ref: ${payment['reference_id']}\nDate: ${DateFormat.yMMMd().format(date)}'),
                isThreeLine: true,
                trailing: IconButton(
                  icon: const Icon(Icons.download, color: Colors.teal),
                  onPressed: () {
                    PdfService().downloadAcademyReceipt(payment);
                  },
                ),
              ),
            );
          },
        );
      },
      orElse: () => const Center(child: Text('Record or select a student to view context-aware payment logs.')),
    );
  }

  Widget _buildFeeStructuresList(EducationState state) {
    return state.maybeWhen(
      feeStructuresLoaded: (feeStructures) {
        if (feeStructures.isEmpty) {
          return const Center(child: Text('No fee structures found.'));
        }
        return ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: feeStructures.length,
          itemBuilder: (context, index) {
            final fee = feeStructures[index];
            final currencyFormat = NumberFormat.currency(locale: 'en_IN', symbol: '₹');

            return Card(
              margin: const EdgeInsets.only(bottom: 12.0),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Icon(Icons.money, color: Colors.white),
                ),
                title: Text(fee['name'] ?? 'Fee Structure'),
                subtitle: Text('Amount: ${currencyFormat.format(fee['amount'] ?? 0)}\nCourse: ${fee['course_name'] ?? 'N/A'}'),
                isThreeLine: true,
              ),
            );
          },
        );
      },
      orElse: () => const SizedBox.shrink(),
    );
  }
}
