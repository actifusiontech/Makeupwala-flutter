import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_typography.dart';
import '../../shared/theme/app_spacing.dart';
import 'bloc/booking_bloc.dart';
import '../../core/models/rewards.dart';
import 'data/booking_repository.dart';

class BookingScreen extends StatefulWidget {
  final String artistId;
  final String serviceId;
  final String serviceName;
  final String price;

  const BookingScreen({
    super.key,
    required this.artistId,
    required this.serviceId,
    required this.serviceName,
    required this.price,
  });

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  final _notesController = TextEditingController();
  final _couponController = TextEditingController();
  
  LoyaltyBalance? _loyaltyBalanceModel;
  bool _useLoyaltyPoints = false;
  String _paymentMethod = 'online';

  // Coupon State
  bool _isValidatingCoupon = false;
  String? _couponError;
  String? _couponSuccess;
  double _couponDiscount = 0.0;
  String? _appliedCouponCode;

  @override
  void initState() {
    super.initState();
    _fetchLoyaltyBalance();
  }

  Future<void> _fetchLoyaltyBalance() async {
    final balanceModel = await BookingRepository().getLoyaltyBalance();
    if (mounted) {
      setState(() => _loyaltyBalanceModel = balanceModel);
    }
  }

  Future<void> _validateCoupon() async {
    final code = _couponController.text.trim();
    if (code.isEmpty) return;

    setState(() {
      _isValidatingCoupon = true;
      _couponError = null;
      _couponSuccess = null;
    });

    try {
      final repo = BookingRepository();
      // Expecting { discount_type: 'PERCENTAGE'|'FIXED', value: 10, ... }
      final result = await repo.validateCoupon(code);
      
      if (mounted) {
        final dType = result['discount_type'];
        final val = result['value']; // int or double? API returns int usually
        
        // Calculate potential discount
        double discount = 0.0;
        final basePrice = double.tryParse(widget.price.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0.0;

        if (dType == 'PERCENTAGE') {
          discount = basePrice * (val / 100.0);
        } else {
          discount = val.toDouble();
        }

        setState(() {
          _couponDiscount = discount;
          _appliedCouponCode = code;
          _couponSuccess = 'Coupon applied! You saved ₹${discount.toStringAsFixed(0)}';
        });
      }
    } catch (e) {
      if (mounted) {
        // e might be DioException with response message
        // For now just show generic or 'Invalid coupon'
         setState(() {
           _couponError = 'Invalid coupon or criteria not met.';
           _couponDiscount = 0.0;
           _appliedCouponCode = null;
         });
      }
    } finally {
      if (mounted) {
        setState(() => _isValidatingCoupon = false);
      }
    }
  }

  double _calculateFinalPrice() {
    final basePrice = double.tryParse(widget.price.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0.0;
    double total = basePrice;
    
    // Apply Coupon first
    if (_couponDiscount > 0) {
      total -= _couponDiscount;
    }

    // Apply Loyalty
    if (_useLoyaltyPoints && _loyaltyBalanceModel != null) {
      total -= _loyaltyBalanceModel!.balance.toDouble();
    }
    
    return total > 0 ? total : 0;
  }

  @override
  void dispose() {
    _notesController.dispose();
    _couponController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookingBloc(repository: BookingRepository()),
      child: BlocConsumer<BookingBloc, BookingState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: AppColors.success),
              );
              context.go('/customer/home'); // Go back to home after success
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: AppColors.error),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeMap(
            loading: (_) => true,
            orElse: () => false,
          );

          return Scaffold(
            backgroundColor: AppColors.white,
            appBar: AppBar(
              title: const Text('Book Appointment'),
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.white,
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(AppSpacing.screenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Service Details Card
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpacing.md),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Service Details', style: AppTypography.titleMedium),
                          const Divider(),
                          const SizedBox(height: AppSpacing.sm),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(widget.serviceName, style: AppTypography.bodyLarge),
                              Text(widget.price, style: AppTypography.titleMedium.copyWith(color: AppColors.primary)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),

                  // Date Selection
                  Text('Select Date', style: AppTypography.titleMedium),
                  const SizedBox(height: AppSpacing.sm),
                  InkWell(
                    onTap: () async {
                      final date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now().add(const Duration(days: 1)),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(const Duration(days: 90)),
                      );
                      if (date != null) {
                        setState(() => _selectedDate = date);
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(AppSpacing.md),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.grey300),
                        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.calendar_today, color: AppColors.textSecondary),
                          const SizedBox(width: AppSpacing.md),
                          Text(
                            _selectedDate != null
                                ? DateFormat('EEE, MMM d, yyyy').format(_selectedDate!)
                                : 'Choose a date',
                            style: AppTypography.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),

                  // Time Selection
                  Text('Select Time', style: AppTypography.titleMedium),
                  const SizedBox(height: AppSpacing.sm),
                  InkWell(
                    onTap: () async {
                      final time = await showTimePicker(
                        context: context,
                        initialTime: const TimeOfDay(hour: 10, minute: 0),
                      );
                      if (time != null) {
                        setState(() => _selectedTime = time);
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(AppSpacing.md),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.grey300),
                        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.access_time, color: AppColors.textSecondary),
                          const SizedBox(width: AppSpacing.md),
                          Text(
                            _selectedTime != null
                                ? _selectedTime!.format(context)
                                : 'Choose a time',
                            style: AppTypography.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),

                  // Coupon Section
                  Text('Offers & Coupons', style: AppTypography.titleMedium),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _couponController,
                          decoration: InputDecoration(
                            hintText: 'Enter Coupon Code',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
                            ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                          ),
                          onChanged: (val) {
                             if (_couponSuccess != null && val != _appliedCouponCode) {
                               setState(() {
                                 _couponSuccess = null;
                                 _couponDiscount = 0.0;
                                 _appliedCouponCode = null;
                               });
                             }
                          },
                        ),
                      ),
                      const SizedBox(width: AppSpacing.sm),
                      ElevatedButton(
                        onPressed: _isValidatingCoupon ? null : _validateCoupon,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.secondary,
                          foregroundColor: AppColors.primary,
                        ),
                        child: _isValidatingCoupon
                          ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
                          : const Text('Apply'),
                      ),
                    ],
                  ),
                  if (_couponError != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(_couponError!, style: AppTypography.bodySmall.copyWith(color: AppColors.error)),
                    ),
                  if (_couponSuccess != null)
                     Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(_couponSuccess!, style: AppTypography.bodySmall.copyWith(color: AppColors.success)),
                    ),
                  const SizedBox(height: AppSpacing.xl),

                  // Payment Method Selection
                  Text('Payment Method', style: AppTypography.titleMedium),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    children: [
                      Expanded(
                        child: _buildPaymentOption(
                          icon: Icons.payments,
                          label: 'Online',
                          value: 'online',
                        ),
                      ),
                      const SizedBox(width: AppSpacing.md),
                      Expanded(
                        child: _buildPaymentOption(
                          icon: Icons.money,
                          label: 'Cash (Offline)',
                          value: 'offline',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xl),

                  // Notes
                  Text('Add Notes (Optional)', style: AppTypography.titleMedium),
                  const SizedBox(height: AppSpacing.sm),
                  TextField(
                    controller: _notesController,
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: 'Any specific requirements...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),

                  // Loyalty Points Redemption
                  if (_loyaltyBalance > 0)
                    Card(
                      color: AppColors.primary.withOpacity(0.05),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: AppColors.primary.withOpacity(0.2)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(AppSpacing.md),
                        child: Row(
                          children: [
                            const Icon(Icons.stars, color: AppColors.primary),
                            const SizedBox(width: AppSpacing.md),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Use Loyalty Points',
                                    style: AppTypography.titleSmall.copyWith(
                                      color: _paymentMethod == 'offline' ? AppColors.textSecondary : null,
                                    ),
                                  ),
                                  Text(
                                    _paymentMethod == 'offline'
                                        ? 'Redemption only available for online payments'
                                        : 'You have ${_loyaltyBalanceModel?.balance ?? 0} points (₹${_loyaltyBalanceModel?.balance ?? 0} discount)',
                                    style: AppTypography.bodySmall.copyWith(
                                      color: _paymentMethod == 'offline' ? AppColors.error : null,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Switch(
                              value: _useLoyaltyPoints && _paymentMethod == 'online',
                              onChanged: _paymentMethod == 'offline'
                                  ? null
                                  : (value) {
                                      setState(() => _useLoyaltyPoints = value);
                                    },
                              activeColor: AppColors.primary,
                            ),
                          ],
                        ),
                      ),
                    ),
                  const SizedBox(height: AppSpacing.xxl),

                  // Final Summary
                  if (_useLoyaltyPoints || _couponDiscount > 0) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Original Price', style: AppTypography.bodyLarge),
                        Text(widget.price, style: AppTypography.bodyLarge),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    if (_couponDiscount > 0)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Coupon Discount', style: TextStyle(color: AppColors.success)),
                          Text('-₹${_couponDiscount.toInt()}', style: const TextStyle(color: AppColors.success)),
                        ],
                      ),
                    if (_useLoyaltyPoints)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Loyalty Discount', style: TextStyle(color: AppColors.success)),
                          Text('-₹${_loyaltyBalanceModel?.balance ?? 0}', style: const TextStyle(color: AppColors.success)),
                        ],
                      ),
                    const Divider(height: AppSpacing.lg),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total to Pay', style: AppTypography.titleLarge),
                        Text(
                          '₹${_calculateFinalPrice().toInt()}',
                          style: AppTypography.titleLarge.copyWith(color: AppColors.primary),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.xl),
                  ],

                  // Confirm Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: isLoading || _selectedDate == null || _selectedTime == null
                          ? null
                          : () {
                              final timeString = '${_selectedTime!.hour.toString().padLeft(2, '0')}:${_selectedTime!.minute.toString().padLeft(2, '0')}';
                              context.read<BookingBloc>().add(
                                    BookingEvent.createBooking(
                                      artistId: widget.artistId,
                                      serviceId: widget.serviceId,
                                      date: _selectedDate!,
                                      time: timeString,
                                      notes: _notesController.text,
                                      redeemPoints: _useLoyaltyPoints && _paymentMethod == 'online' ? (_loyaltyBalanceModel?.balance ?? 0) : 0,
                                      paymentMethod: _paymentMethod,
                                      couponCode: _appliedCouponCode,
                                    ),
                                  );
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                      ),
                      child: isLoading
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text(
                              'Confirm Booking',
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPaymentOption({
    required IconData icon,
    required String label,
    required String value,
  }) {
    final isSelected = _paymentMethod == value;
    return InkWell(
      onTap: () {
        setState(() {
          _paymentMethod = value;
          if (value == 'offline') {
            _useLoyaltyPoints = false;
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.md, horizontal: AppSpacing.sm),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary.withOpacity(0.05) : Colors.transparent,
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.grey300,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: isSelected ? AppColors.primary : AppColors.textSecondary,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: AppTypography.bodySmall.copyWith(
                color: isSelected ? AppColors.primary : AppColors.textSecondary,
                fontWeight: isSelected ? FontWeight.bold : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
