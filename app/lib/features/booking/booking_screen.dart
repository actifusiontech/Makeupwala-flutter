import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'bloc/booking_bloc.dart';
import '../../core/models/rewards.dart';
import 'data/booking_repository.dart';
import '../../core/services/payment_service.dart';
import '../wallet/data/wallet_repository.dart';
import '../../core/network/api_client.dart';
import '../auth/bloc/auth_bloc.dart';

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

  // Wallet State
  double _walletBalance = 0.0;
  bool _isLoadingWallet = false;

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
    _fetchWalletBalance();
  }

  Future<void> _fetchLoyaltyBalance() async {
    final balanceModel = await BookingRepository().getLoyaltyBalance();
    if (mounted) {
      setState(() => _loyaltyBalanceModel = balanceModel);
    }
  }

  Future<void> _fetchWalletBalance() async {
    setState(() => _isLoadingWallet = true);
    try {
      final repo = WalletRepository(ApiClient());
      final data = await repo.getBalance();
      if (mounted) {
        setState(() {
          _walletBalance = (data['balance'] as num).toDouble();
        });
      }
    } catch (e) {
      // Handle error gently
    } finally {
      if (mounted) {
        setState(() => _isLoadingWallet = false);
      }
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

  // Check if wallet has enough balance for the specific payment amount
  bool _hasSufficientWalletBalance() {
    if (_paymentMethod != 'wallet') return true;
    
    // For wallet, we must pay either full or deposit
    // But currently backend creates booking then initiates payment
    // However, for wallet, we should probably validate upfront
    
    final finalPrice = _calculateFinalPrice();
    // Assuming if finalPrice >= 5000, we need 20% deposit
    final amountToPay = finalPrice >= 5000 ? finalPrice * 0.2 : finalPrice;
    
    return _walletBalance >= amountToPay;
  }

  // Time Validation
  bool _isTimeValid(TimeOfDay time) {
    // 1. Business Hours Check (09:00 AM - 09:00 PM)
    if (time.hour < 9 || time.hour > 21) {
      return false;
    }

    // 2. Future Time Check (if Today)
    if (_selectedDate != null) {
      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);
      final selectedDateOnly = DateTime(_selectedDate!.year, _selectedDate!.month, _selectedDate!.day);

      if (selectedDateOnly.isAtSameMomentAs(today)) {
        final currentTotalMinutes = now.hour * 60 + now.minute;
        final selectedTotalMinutes = time.hour * 60 + time.minute;
        // Require at least 1 hour notice? Let's say strictly future for now.
        if (selectedTotalMinutes <= currentTotalMinutes) {
          return false;
        }
      }
    }

    return true;
  }

  void _showInvalidTimeError() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Please select a valid time between 09:00 AM and 09:00 PM, and in the future.'),
        backgroundColor: AppColors.error,
      ),
    );
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
            success: (message, booking) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: AppColors.success),
              );
              
              if (booking != null) {
                final authState = context.read<AuthBloc>().state;
                final user = authState.maybeMap(
                  authenticated: (state) => state.user,
                  orElse: () => null,
                );

                context.go('/booking/confirmation', extra: {
                  'bookingId': booking['id'].toString(),
                  'customerName': user?.fullName ?? 'Customer',
                  'serviceName': widget.serviceName,
                  'artistName': 'Artist',
                  'bookingDate': _selectedDate ?? DateTime.now(),
                  'bookingTime': _selectedTime ?? '',
                  'amountPaid': (booking['total_amount'] as num).toDouble(),
                  'paymentId': booking['payment_id']?.toString() ?? 'CASH',
                  'isDeposit': (booking['total_amount'] as num).toDouble() < (double.tryParse(widget.price.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0.0),
                });
              } else {
                context.go('/customer/home');
              }
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: AppColors.error),
              );
            },
            paymentRequired: (orderId, amount, bookingId, keyId) {
              final authState = context.read<AuthBloc>().state;
              final user = authState.maybeMap(
                authenticated: (state) => state.user,
                orElse: () => null,
              );
              
              final name = user?.fullName?.isNotEmpty == true ? user!.fullName! : 'Customer';
              final email = user?.email?.isNotEmpty == true ? user!.email! : 'customer@makeupwala.com';
              final phone = user?.phone?.isNotEmpty == true ? user!.phone! : '9999999999';

              final paymentService = PaymentService();
              paymentService.openRazorpayCheckout(
                orderId: orderId,
                amount: amount,
                name: name,
                email: email,
                phone: phone,
                keyId: keyId,
                onSuccess: (response) {
                  context.read<BookingBloc>().add(
                    BookingEvent.processPayment(
                      orderId: orderId,
                      paymentId: response.paymentId!,
                      signature: response.signature!,
                      bookingId: bookingId,
                    ),
                  );
                },
                onFailure: (response) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Payment failed: ${response.message ?? "Unknown error"}'),
                      backgroundColor: AppColors.error,
                      action: SnackBarAction(
                        label: 'Retry',
                        textColor: AppColors.white,
                        onPressed: () {
                          // Retry payment by triggering the same state again
                          // This would require storing the booking details
                        },
                      ),
                    ),
                  );
                },
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

          final finalPrice = _calculateFinalPrice();
          final depositAmount = finalPrice >= 5000 ? finalPrice * 0.2 : 0.0;
          final amountToPay = depositAmount > 0 ? depositAmount : finalPrice;
          
          final isWalletBalanceInsufficient = _paymentMethod == 'wallet' && _walletBalance < amountToPay;
          final isTimeValid = _selectedTime != null && _isTimeValid(_selectedTime!);
          final isFormValid = _selectedDate != null && isTimeValid && !isWalletBalanceInsufficient;

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
                        setState(() {
                          _selectedDate = date;
                          // Invalidate time if needed
                          if (_selectedTime != null && !_isTimeValid(_selectedTime!)) {
                             _selectedTime = null;
                             _showInvalidTimeError();
                          }
                        });
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
                        if (_isTimeValid(time)) {
                          setState(() => _selectedTime = time);
                        } else {
                          _showInvalidTimeError();
                        }
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
                  if (_selectedDate != null && _selectedTime == null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 4.0),
                      child: Text(
                        'Please select a valid time (09:00 AM - 09:00 PM)',
                        style: AppTypography.bodySmall.copyWith(color: AppColors.error),
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
                          icon: Icons.account_balance_wallet,
                          label: 'Wallet',
                          value: 'wallet',
                          subtitle: _isLoadingWallet ? 'Loading...' : '₹${_walletBalance.toStringAsFixed(0)}',
                        ),
                      ),
                      const SizedBox(width: AppSpacing.md),
                      Expanded(
                        child: _buildPaymentOption(
                          icon: Icons.money,
                          label: 'Cash',
                          value: 'offline',
                        ),
                      ),
                    ],
                  ),
                  if (isWalletBalanceInsufficient)
                    Container(
                      margin: const EdgeInsets.only(top: AppSpacing.md),
                      padding: const EdgeInsets.all(AppSpacing.sm),
                      decoration: BoxDecoration(
                        color: AppColors.error.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.error.withOpacity(0.5)),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.error_outline, size: 20, color: AppColors.error),
                          const SizedBox(width: 8),
                          const Expanded(child: Text(
                            'Insufficient balance. Please top up.',
                             style: TextStyle(color: AppColors.error, fontSize: 13),
                          )),
                          TextButton(
                            onPressed: () {
                              context.push('/wallet'); // Navigate to wallet for topup
                            }, 
                            child: const Text('Top Up'),
                          ),
                        ],
                      ),
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
                  if ((_loyaltyBalanceModel?.balance ?? 0) > 0)
                    Card(
                      color: AppColors.primary.withValues(alpha: 0.05),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: AppColors.primary.withValues(alpha: 0.2)),
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
                                        ? 'Redemption only available for online/wallet payments'
                                        : 'You have ${_loyaltyBalanceModel?.balance ?? 0} points (₹${_loyaltyBalanceModel?.balance ?? 0} discount)',
                                    style: AppTypography.bodySmall.copyWith(
                                      color: _paymentMethod == 'offline' ? AppColors.error : null,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Switch(
                              value: _useLoyaltyPoints && _paymentMethod != 'offline',
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
                          '₹${finalPrice.toInt()}',
                          style: AppTypography.titleLarge.copyWith(color: AppColors.primary),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    // High Value Booking Highlight / Payment Breakdown
                    if (finalPrice >= 5000)
                      Container(
                         padding: const EdgeInsets.all(AppSpacing.sm),
                        decoration: BoxDecoration(
                          color: AppColors.warning.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.warning),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.lock, size: 16, color: AppColors.warning),
                            const SizedBox(width: 8),
                            Expanded(child: Text(
                              _paymentMethod == 'online' || _paymentMethod == 'wallet'
                                ? 'High Value: 20% Deposit (₹${(finalPrice * 0.2).toStringAsFixed(0)}) required.'
                                : 'High Value: Pay directly to artist.',
                              style: AppTypography.bodySmall.copyWith(color: AppColors.textPrimary),
                            )),
                          ],
                        ),
                      ),
                    const SizedBox(height: AppSpacing.xl),
                  ],

                  // Confirm Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: isLoading || !isFormValid
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
                                      redeemPoints: _useLoyaltyPoints && _paymentMethod != 'offline' ? (_loyaltyBalanceModel?.balance ?? 0) : 0,
                                      paymentMethod: _paymentMethod,
                                      couponCode: _appliedCouponCode,
                                    ),
                                  );
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                        disabledBackgroundColor: AppColors.grey300,
                      ),
                      child: isLoading
                          ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2))
                          : Text(
                              _getButtonLabel(finalPrice),
                              style: const TextStyle(color: Colors.white, fontSize: 16),
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

  String _getButtonLabel(double finalPrice) {
    if (_paymentMethod == 'online') {
      return finalPrice >= 5000 
        ? 'Pay Deposit (₹${(finalPrice * 0.2).toStringAsFixed(0)}) & Confirm'
        : 'Pay Now & Confirm';
    } else if (_paymentMethod == 'wallet') {
      final payAmount = finalPrice >= 5000 ? finalPrice * 0.2 : finalPrice;
       return 'Pay ₹${payAmount.toStringAsFixed(0)} from Wallet';
    } else {
      return 'Confirm Booking';
    }
  }

  Widget _buildPaymentOption({
    required IconData icon,
    required String label,
    required String value,
    String? subtitle,
  }) {
    final isSelected = _paymentMethod == value;
    return InkWell(
      onTap: () {
        setState(() {
          _paymentMethod = value;
          // Re-evaluate loyalty toggle if switching to offline
          if (value == 'offline') {
            _useLoyaltyPoints = false;
          }
        });
      },
      child: Container(
        height: 100, // Fixed height for alignment
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm, horizontal: AppSpacing.xs),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary.withValues(alpha: 0.05) : Colors.transparent,
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.grey300,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
              textAlign: TextAlign.center,
            ),
            if (subtitle != null) ...[
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: AppTypography.labelSmall.copyWith(
                  color: isSelected ? AppColors.primary : AppColors.textSecondary,
                ),
                textAlign: TextAlign.center,
              ),
            ]
          ],
        ),
      ),
    );
  }
}
