import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../shared/widgets/custom_button.dart';

class InvoiceScreen extends StatelessWidget {
  final String bookingId;

  const InvoiceScreen({
    Key? key,
    required this.bookingId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invoice'),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () => _shareInvoice(context),
          ),
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () => _downloadInvoice(context),
          ),
        ],
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _fetchInvoice(bookingId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 64, color: Colors.red),
                  const SizedBox(height: 16),
                  Text('Error loading invoice: ${snapshot.error}'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Go Back'),
                  ),
                ],
              ),
            );
          }

          if (!snapshot.hasData) {
            return const Center(child: Text('No invoice data'));
          }

          return _buildInvoiceContent(context, snapshot.data!);
        },
      ),
    );
  }

  Widget _buildInvoiceContent(BuildContext context, Map<String, dynamic> invoice) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Invoice Header
          _buildInvoiceHeader(invoice),
          const Divider(height: 32),

          // Customer Details
          _buildCustomerDetails(invoice),
          const Divider(height: 32),

          // Invoice Info
          _buildInvoiceInfo(invoice),
          const SizedBox(height: 24),

          // Services Table
          _buildServicesTable(invoice),
          const SizedBox(height: 24),

          // Totals
          _buildTotals(invoice),
          const SizedBox(height: 24),

          // Payment Status
          _buildPaymentStatus(invoice),
          const SizedBox(height: 24),

          // Collect Payment Button (if not paid)
          if (invoice['payment_status'] != 'paid')
            CustomButton(
              text: 'Collect Payment',
              onPressed: () => _showPaymentOptions(context, invoice),
              isFullWidth: true,
            ),
        ],
      ),
    );
  }

  Widget _buildInvoiceHeader(Map<String, dynamic> invoice) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 30,
          child: Icon(Icons.receipt_long, size: 30),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'MakeupWala',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Invoice #${invoice['invoice_number'] ?? 'N/A'}',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCustomerDetails(Map<String, dynamic> invoice) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Bill To:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        Text(invoice['customer_name'] ?? 'N/A'),
        Text(invoice['customer_phone'] ?? 'N/A'),
      ],
    );
  }

  Widget _buildInvoiceInfo(Map<String, dynamic> invoice) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Date: ${invoice['service_date'] ?? 'N/A'}'),
        Text('Booking ID: ${bookingId.substring(0, 8)}'),
      ],
    );
  }

  Widget _buildServicesTable(Map<String, dynamic> invoice) {
    final services = invoice['services'] as List? ?? [];

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          // Header
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: const Row(
              children: [
                Expanded(flex: 3, child: Text('Service', style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(flex: 1, child: Text('Qty', style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(flex: 2, child: Text('Price', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.right)),
                Expanded(flex: 2, child: Text('Amount', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.right)),
              ],
            ),
          ),
          // Services
          ...services.map((service) => Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[300]!),
              ),
            ),
            child: Row(
              children: [
                Expanded(flex: 3, child: Text(service['service_name'] ?? 'N/A')),
                Expanded(flex: 1, child: Text('${service['quantity'] ?? 1}')),
                Expanded(flex: 2, child: Text('₹${service['unit_price'] ?? 0}', textAlign: TextAlign.right)),
                Expanded(flex: 2, child: Text('₹${service['total_price'] ?? 0}', textAlign: TextAlign.right)),
              ],
            ),
          )).toList(),
        ],
      ),
    );
  }

  Widget _buildTotals(Map<String, dynamic> invoice) {
    return Column(
      children: [
        _buildTotalRow('Subtotal', invoice['subtotal'] ?? 0),
        _buildTotalRow('GST (18%)', invoice['gst_amount'] ?? 0),
        if ((invoice['discount_amount'] ?? 0) > 0)
          _buildTotalRow('Discount', -(invoice['discount_amount'] ?? 0), color: Colors.green),
        const Divider(),
        _buildTotalRow(
          'Total Amount',
          invoice['total_amount'] ?? 0,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildTotalRow(String label, num amount, {TextStyle? style, Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: style),
          Text(
            '₹${amount.toStringAsFixed(2)}',
            style: style?.copyWith(color: color) ?? TextStyle(color: color),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentStatus(Map<String, dynamic> invoice) {
    final isPaid = invoice['payment_status'] == 'paid';
    
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isPaid ? Colors.green.shade50 : Colors.orange.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isPaid ? Colors.green : Colors.orange,
        ),
      ),
      child: Row(
        children: [
          Icon(
            isPaid ? Icons.check_circle : Icons.pending,
            color: isPaid ? Colors.green : Colors.orange,
          ),
          const SizedBox(width: 8),
          Text(
            'Payment Status: ${(invoice['payment_status'] ?? 'pending').toUpperCase()}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Future<Map<String, dynamic>> _fetchInvoice(String bookingId) async {
    // TODO: Replace with actual API call
    await Future.delayed(const Duration(seconds: 1));
    
    return {
      'invoice_number': 'INV-202601-0001',
      'booking_id': bookingId,
      'customer_name': 'Priya Sharma',
      'customer_phone': '+91 98765 43210',
      'service_date': '2026-01-15',
      'services': [
        {
          'service_name': 'Bridal Makeup',
          'quantity': 1,
          'unit_price': 10000,
          'total_price': 10000,
        },
        {
          'service_name': 'Hair Styling',
          'quantity': 1,
          'unit_price': 3000,
          'total_price': 3000,
        },
      ],
      'subtotal': 13000,
      'gst_amount': 2340,
      'discount_amount': 0,
      'total_amount': 15340,
      'payment_status': 'pending',
      'payment_method': 'online',
    };
  }

  void _shareInvoice(BuildContext context) {
    Share.share('Invoice #INV-202601-0001\nTotal: ₹15,340\nView full invoice in MakeupWala app');
  }

  void _downloadInvoice(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Invoice download feature coming soon')),
    );
  }

  void _showPaymentOptions(BuildContext context, Map<String, dynamic> invoice) {
    showModalBottomSheet(
      context: context,
      builder: (context) => PaymentOptionsModal(
        bookingId: bookingId,
        amount: invoice['total_amount'] ?? 0,
      ),
    );
  }
}

// Payment Options Modal (placeholder - will be implemented next)
class PaymentOptionsModal extends StatelessWidget {
  final String bookingId;
  final num amount;

  const PaymentOptionsModal({
    Key? key,
    required this.bookingId,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Collect Payment',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          const Text('Payment options will be implemented next'),
        ],
      ),
    );
  }
}
