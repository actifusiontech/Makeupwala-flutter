import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:printing/printing.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:app/shared/widgets/custom_button.dart';
import '../utils/invoice_generator.dart';
import '../../../../core/network/api_client.dart';
import '../../booking/data/booking_repository.dart';

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
            onPressed: () => _shareInvoice(context, bookingId),
          ),
          IconButton(
            icon: const Icon(Icons.print),
            onPressed: () => _printInvoice(context, bookingId),
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
             return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (!snapshot.hasData) {
            return const Center(child: Text('No invoice data'));
          }
          
          // Pass data to methods if needed, or just use snapshot.data! inline
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
    try {
      final response = await ApiClient().dio.get('/artists/me/bookings/$bookingId');
      final data = response.data['data'] as Map<String, dynamic>;
      
      final services = (data['services'] as List?)?.map((s) => {
        'service_name': s['name'] ?? 'Makeup Service',
        'quantity': s['quantity'] ?? 1,
        'unit_price': s['price'] ?? 0,
        'total_price': (s['price'] ?? 0) * (s['quantity'] ?? 1),
      }).toList() ?? [
        {
          'service_name': data['service_name'] ?? 'Makeup Service',
          'quantity': 1,
          'unit_price': data['total_amount'] ?? 0,
          'total_price': data['total_amount'] ?? 0,
        }
      ];

      return {
        'invoice_number': 'INV-${DateTime.now().year}${DateTime.now().month.toString().padLeft(2, '0')}-${bookingId.substring(0, 4).toUpperCase()}',
        'booking_id': bookingId,
        'customer_name': data['customer_name'] ?? 'Customer',
        'customer_phone': data['customer_contact'] ?? 'N/A',
        'service_date': data['date'] ?? 'N/A',
        'services': services,
        'subtotal': data['total_amount'] ?? 0,
        'gst_amount': (data['total_amount'] ?? 0) * 0.18,
        'discount_amount': 0,
        'total_amount': (data['total_amount'] ?? 0) * 1.18, 
        'payment_status': data['payment_status'] ?? 'pending',
        'payment_method': data['payment_method'] ?? 'online',
      };
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _shareInvoice(BuildContext context, String bookingId) async {
    final invoiceData = await _fetchInvoice(bookingId); // Re-fetch or pass data? ideally pass data
    // For simplicity, re-fetching mocked data is fine. In real app, pass data.
    final pdfBytes = await InvoiceGenerator.generateInvoice(invoiceData);
    await Printing.sharePdf(bytes: pdfBytes, filename: 'invoice_$bookingId.pdf');
  }

  Future<void> _printInvoice(BuildContext context, String bookingId) async {
    final invoiceData = await _fetchInvoice(bookingId);
    final pdfBytes = await InvoiceGenerator.generateInvoice(invoiceData);
    await Printing.layoutPdf(
      onLayout: (format) async => pdfBytes,
      name: 'Invoice $bookingId',
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

class PaymentOptionsModal extends StatelessWidget {
  final String bookingId;
  final num amount;
  final BookingRepository _bookingRepository = BookingRepository();

  PaymentOptionsModal({
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
          ListTile(
            leading: const Icon(Icons.link, color: AppColors.primary),
            title: const Text('Generate Payment Link'),
            subtitle: const Text('Share a link via WhatsApp/SMS'),
            onTap: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Payment link functionality coming soon!')),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.qr_code, color: AppColors.primary),
            title: const Text('Show QR Code'),
            subtitle: const Text('Customer scans to pay'),
            onTap: () {
              Navigator.pop(context);
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: const Text('Scan to Pay'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.qr_code_2, size: 200),
                      Text('Amount: ₹$amount', style: const TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('Done'))],
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.money, color: Colors.green),
            title: const Text('Mark as Paid (Cash)'),
            onTap: () async {
               try {
                 await _bookingRepository.updateBookingStatus(
                   bookingId: bookingId,
                   status: 'completed', // Or 'paid' depending on backend schema
                   isArtist: true,
                   note: 'Paid via Cash',
                 );
                 if (context.mounted) {
                   Navigator.pop(context);
                   ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Payment recorded and booking completed!')),
                  );
                 }
               } catch (e) {
                 if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Error: $e'), backgroundColor: Colors.red),
                    );
                 }
               }
            },
          ),
        ],
      ),
    );
  }
}
