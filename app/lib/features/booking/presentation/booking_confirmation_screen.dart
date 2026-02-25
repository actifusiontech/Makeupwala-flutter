import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:app/core/services/pdf_service.dart';

class BookingConfirmationScreen extends StatelessWidget {
  final String bookingId;
  final String customerName;
  final String serviceName;
  final String artistName;
  final DateTime bookingDate;
  final String bookingTime;
  final double amountPaid;
  final String paymentId;
  final bool isDeposit;

  const BookingConfirmationScreen({
    super.key,
    required this.bookingId,
    required this.customerName,
    required this.serviceName,
    required this.artistName,
    required this.bookingDate,
    required this.bookingTime,
    required this.amountPaid,
    required this.paymentId,
    this.isDeposit = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('Booking Confirmed'),
        backgroundColor: AppColors.success,
        foregroundColor: AppColors.white,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.screenPadding),
        child: Column(
          children: [
            const SizedBox(height: AppSpacing.xl),
            
            // Success Icon
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.success.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check_circle,
                size: 60,
                color: AppColors.success,
              ),
            ),
            
            const SizedBox(height: AppSpacing.xl),
            
            Text(
              'Booking Confirmed!',
              style: AppTypography.headlineMedium.copyWith(
                color: AppColors.success,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: AppSpacing.sm),
            
            Text(
              'Your appointment has been successfully booked',
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: AppSpacing.xxl),
            
            // Booking Details Card
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Booking Details', style: AppTypography.titleLarge),
                    const Divider(height: AppSpacing.lg),
                    
                    _buildDetailRow('Booking ID', bookingId),
                    _buildDetailRow('Service', serviceName),
                    _buildDetailRow('Artist', artistName),
                    _buildDetailRow(
                      'Date',
                      DateFormat('EEE, MMM d, yyyy').format(bookingDate),
                    ),
                    _buildDetailRow('Time', bookingTime),
                    
                    const Divider(height: AppSpacing.lg),
                    
                    _buildDetailRow(
                      isDeposit ? 'Deposit Paid' : 'Amount Paid',
                      '₹${amountPaid.toStringAsFixed(0)}',
                      valueColor: AppColors.success,
                      valueBold: true,
                    ),
                    
                    if (isDeposit) ...[
                      const SizedBox(height: AppSpacing.sm),
                      Container(
                        padding: const EdgeInsets.all(AppSpacing.sm),
                        decoration: BoxDecoration(
                          color: AppColors.warning.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(AppSpacing.radiusSm),
                          border: Border.all(color: AppColors.warning),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.info_outline, size: 16, color: AppColors.warning),
                            const SizedBox(width: AppSpacing.sm),
                            Expanded(
                              child: Text(
                                'Remaining amount to be paid at the time of service',
                                style: AppTypography.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    
                    const SizedBox(height: AppSpacing.md),
                    _buildDetailRow('Payment ID', paymentId, valueSmall: true),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: AppSpacing.xxl),
            
            // Action Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  context.go('/booking/details/$bookingId');
                },
                icon: const Icon(Icons.receipt_long),
                label: const Text('View Booking Details'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.white,
                  padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                ),
              ),
            ),
            
            const SizedBox(height: AppSpacing.md),
            
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () async {
                  try {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Generating receipt...')),
                    );
                    
                    final pdfService = PdfService();
                    await pdfService.downloadReceipt(
                      bookingId: bookingId,
                      customerName: customerName,
                      serviceName: serviceName,
                      artistName: artistName,
                      bookingDate: bookingDate,
                      bookingTime: bookingTime,
                      amountPaid: amountPaid,
                      paymentId: paymentId,
                      isDeposit: isDeposit,
                    );
                  } catch (e) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Failed to generate receipt: $e')),
                      );
                    }
                  }
                },
                icon: const Icon(Icons.download),
                label: const Text('Download Receipt'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                ),
              ),
            ),
            
            const SizedBox(height: AppSpacing.md),
            
            TextButton(
              onPressed: () {
                context.go('/customer/home');
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(
    String label,
    String value, {
    Color? valueColor,
    bool valueBold = false,
    bool valueSmall = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Flexible(
            child: Text(
              value,
              style: (valueSmall ? AppTypography.bodySmall : AppTypography.bodyMedium).copyWith(
                color: valueColor ?? AppColors.textPrimary,
                fontWeight: valueBold ? FontWeight.bold : null,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
