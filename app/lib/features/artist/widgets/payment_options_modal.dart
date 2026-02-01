import 'package:flutter/material.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_spacing.dart';
import '../../../core/services/payment_service.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentOptionsModal extends StatefulWidget {
  final String bookingId;
  final num amount;
  final bool razorpayOnboarded;

  const PaymentOptionsModal({
    Key? key,
    required this.bookingId,
    required this.amount,
    this.razorpayOnboarded = false,
  }) : super(key: key);

  @override
  State<PaymentOptionsModal> createState() => _PaymentOptionsModalState();
}

class _PaymentOptionsModalState extends State<PaymentOptionsModal> {
  bool _isProcessing = false;
  late PaymentService _paymentService;

  @override
  void initState() {
    super.initState();
    _paymentService = PaymentService();
  }

  @override
  void dispose() {
    _paymentService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Handle bar
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 20),

          // Title
          const Text(
            'Collect Payment',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Amount: ₹${widget.amount.toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 24),

          // Online Payment (if Razorpay configured)
          if (widget.razorpayOnboarded)
            _buildPaymentOption(
              icon: Icons.credit_card,
              iconColor: Colors.blue,
              title: 'Online Payment',
              subtitle: 'Card / UPI / Wallet',
              onTap: () => _initiateOnlinePayment(context),
            ),

          // Cash Payment
          _buildPaymentOption(
            icon: Icons.money,
            iconColor: Colors.green,
            title: 'Cash Payment',
            subtitle: 'Collect cash from customer',
            onTap: () => _markPaidOffline(context, 'cash'),
          ),

          // UPI Payment
          _buildPaymentOption(
            icon: Icons.qr_code,
            iconColor: Colors.purple,
            title: 'UPI Payment',
            subtitle: 'Customer pays via UPI',
            onTap: () => _markPaidOffline(context, 'upi'),
          ),

          // Bank Transfer
          _buildPaymentOption(
            icon: Icons.account_balance,
            iconColor: Colors.orange,
            title: 'Bank Transfer',
            subtitle: 'Customer transfers to bank',
            onTap: () => _markPaidOffline(context, 'bank_transfer'),
          ),

          const SizedBox(height: 16),

          // Cancel button
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentOption({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: _isProcessing ? null : onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: iconColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: iconColor, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.grey[400],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _initiateOnlinePayment(BuildContext context) async {
    setState(() => _isProcessing = true);

    try {
      // Initiate payment on backend
      final paymentData = await _paymentService.initiateBookingPayment(
        widget.bookingId,
        (widget.amount * 100).toInt(), // Convert to paise
      );

      // Open Razorpay checkout
      _paymentService.openBookingPaymentCheckout(
        orderId: paymentData['razorpay_order_id'],
        amount: (widget.amount * 100).toInt(),
        keyId: paymentData['key_id'],
        onSuccess: (response) {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Payment successful!'),
                backgroundColor: Colors.green,
              ),
            );
            Navigator.pop(context, true);
          }
        },
        onFailure: (response) {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Payment failed: ${response.message}'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
      );
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isProcessing = false);
      }
    }
  }

  Future<void> _markPaidOffline(BuildContext context, String paymentMethod) async {
    // Show confirmation dialog
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirm Payment'),
        content: Text(
          'Have you received ₹${widget.amount.toStringAsFixed(2)} via ${_getPaymentMethodName(paymentMethod)}?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Confirm'),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    setState(() => _isProcessing = true);

    try {
      // Mark payment as received
      await _paymentService.markBookingPaidOffline(
        bookingId: widget.bookingId,
        paymentMethod: paymentMethod,
        amount: widget.amount,
        notes: 'Payment received via ${_getPaymentMethodName(paymentMethod)}',
      );

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Payment marked as received successfully'),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.pop(context, true); // Return true to indicate success
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error marking payment: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isProcessing = false);
      }
    }
  }

  String _getPaymentMethodName(String method) {
    switch (method) {
      case 'cash':
        return 'Cash';
      case 'upi':
        return 'UPI';
      case 'bank_transfer':
        return 'Bank Transfer';
      default:
        return method;
    }
  }
}
