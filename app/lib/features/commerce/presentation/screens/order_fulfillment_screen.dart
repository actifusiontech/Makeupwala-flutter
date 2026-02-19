import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:app/shared/theme/app_typography.dart';
import '../../domain/commerce_models.dart';
import '../../bloc/commerce_bloc.dart';
import '../../bloc/commerce_event.dart';
import '../../bloc/commerce_state.dart';

class OrderFulfillmentScreen extends StatefulWidget {
  final Order order;

  const OrderFulfillmentScreen({super.key, required this.order});

  @override
  State<OrderFulfillmentScreen> createState() => _OrderFulfillmentScreenState();
}

class _OrderFulfillmentScreenState extends State<OrderFulfillmentScreen> {
  late String _selectedStatus;
  final _trackingNumberController = TextEditingController();
  final _trackingUrlController = TextEditingController();
  final _carrierController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _selectedStatus = widget.order.orderStatus;
    _trackingNumberController.text = widget.order.trackingNumber ?? '';
    _trackingUrlController.text = widget.order.trackingUrl ?? '';
    _carrierController.text = widget.order.shippingCarrier ?? '';
  }

  @override
  void dispose() {
    _trackingNumberController.dispose();
    _trackingUrlController.dispose();
    _carrierController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order #${widget.order.id.substring(0, 8)}'),
      ),
      body: BlocListener<CommerceBloc, CommerceState>(
        listener: (context, state) {
          state.maybeWhen(
            actionSuccess: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: AppColors.success),
              );
              Navigator.pop(context);
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: AppColors.error),
              );
            },
            orElse: () {},
          );
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildOrderSummary(),
              const SizedBox(height: AppSpacing.lg),
              _buildStatusTimeline(),
              const SizedBox(height: AppSpacing.lg),
              _buildStatusUpdateSection(),
              const SizedBox(height: AppSpacing.lg),
              _buildTrackingSection(),
              const SizedBox(height: AppSpacing.xl),
              _buildUpdateButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderSummary() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order Summary', style: AppTypography.titleLarge),
            const SizedBox(height: AppSpacing.sm),
            _buildInfoRow('Order ID', widget.order.id),
            _buildInfoRow('Total Amount', '₹${widget.order.totalAmount.toStringAsFixed(2)}'),
            _buildInfoRow('Items', '${widget.order.items.length}'),
            _buildInfoRow('Shipping Address', widget.order.shippingAddress),
            if (widget.order.createdAt != null)
              _buildInfoRow('Placed On', DateFormat('MMM dd, yyyy').format(widget.order.createdAt!)),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(label, style: AppTypography.labelMedium.copyWith(color: AppColors.textSecondary)),
          ),
          Expanded(child: Text(value, style: AppTypography.bodyMedium)),
        ],
      ),
    );
  }

  Widget _buildStatusTimeline() {
    final statuses = ['placed', 'processing', 'shipped', 'delivered'];
    final currentIndex = statuses.indexOf(widget.order.orderStatus);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order Timeline', style: AppTypography.titleMedium),
            const SizedBox(height: AppSpacing.md),
            Row(
              children: List.generate(statuses.length, (index) {
                final isCompleted = index <= currentIndex;
                return Expanded(
                  child: Column(
                    children: [
                      Icon(
                        isCompleted ? Icons.check_circle : Icons.circle_outlined,
                        color: isCompleted ? AppColors.success : AppColors.border,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        statuses[index].toUpperCase(),
                        style: AppTypography.labelSmall.copyWith(
                          color: isCompleted ? AppColors.success : AppColors.textSecondary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusUpdateSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Update Status', style: AppTypography.titleMedium),
            const SizedBox(height: AppSpacing.sm),
            DropdownButtonFormField<String>(
              value: _selectedStatus,
              decoration: const InputDecoration(
                labelText: 'Order Status',
                border: OutlineInputBorder(),
              ),
              items: ['placed', 'processing', 'shipped', 'delivered', 'cancelled']
                  .map((status) => DropdownMenuItem(
                        value: status,
                        child: Text(status.toUpperCase()),
                      ))
                  .toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() => _selectedStatus = value);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrackingSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Shipping Information', style: AppTypography.titleMedium),
            const SizedBox(height: AppSpacing.sm),
            TextField(
              controller: _carrierController,
              decoration: const InputDecoration(
                labelText: 'Shipping Carrier',
                hintText: 'e.g., FedEx, DHL, Blue Dart',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.local_shipping),
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            TextField(
              controller: _trackingNumberController,
              decoration: const InputDecoration(
                labelText: 'Tracking Number',
                hintText: 'Enter tracking number',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.confirmation_number),
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            TextField(
              controller: _trackingUrlController,
              decoration: const InputDecoration(
                labelText: 'Tracking URL (Optional)',
                hintText: 'https://...',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.link),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUpdateButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          context.read<CommerceBloc>().add(
                CommerceEvent.updateOrderStatus(
                  orderId: widget.order.id,
                  status: _selectedStatus,
                  trackingNumber: _trackingNumberController.text.isNotEmpty ? _trackingNumberController.text : null,
                  trackingUrl: _trackingUrlController.text.isNotEmpty ? _trackingUrlController.text : null,
                  carrier: _carrierController.text.isNotEmpty ? _carrierController.text : null,
                ),
              );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
        ),
        child: const Text('Update Order', style: TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }
}
