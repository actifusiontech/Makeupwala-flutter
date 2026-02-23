import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../bloc/wallet_bloc.dart';
import '../../bloc/wallet_event.dart';
import '../../bloc/wallet_state.dart';
import 'bank_linking_screen.dart';
import '../../../../core/services/payment_service.dart';
import '../../../auth/bloc/auth_bloc.dart';
import 'package:app/shared/widgets/shimmer_loaders.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Wallet'),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.primary, AppColors.primaryDark],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        foregroundColor: AppColors.white,
      ),
      body: BlocConsumer<WalletBloc, WalletState>(
        listener: (context, state) {
          state.maybeWhen(
            paymentRequired: (orderId, amount, keyId) {
              final authState = context.read<AuthBloc>().state;
              final user = authState.maybeWhen(
                authenticated: (user) => user,
                orElse: () => null,
              );
              
              final paymentService = PaymentService();
              paymentService.openRazorpayCheckout(
                orderId: orderId,
                amount: amount,
                name: 'MakeupWala Wallet',
                email: user?.email ?? 'info@makeupwallah.com',
                phone: user?.phone ?? '',
                keyId: keyId,
                onSuccess: (response) {
                  context.read<WalletBloc>().add(
                    WalletEvent.processTopUp(
                      orderId: orderId,
                      paymentId: response.paymentId!,
                      signature: response.signature!,
                    ),
                  );
                },
                onFailure: (response) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Top-up failed: ${response.message}')),
                  );
                },
              );
            },
            topUpSuccess: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Wallet top-up successful!'), backgroundColor: AppColors.success),
              );
            },
            withdrawalSuccess: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Withdrawal request submitted successfully!'), backgroundColor: AppColors.success),
              );
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
          return state.maybeWhen(
            loading: () => Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                children: [
                  ShimmerLoaders.profileHeader(),
                  const SizedBox(height: AppSpacing.xl),
                  ShimmerLoaders.listTile(),
                  ShimmerLoaders.listTile(),
                ],
              ),
            ),
            loaded: (balance, currency, transactions, isBankLinked) {
              return SingleChildScrollView(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Balance Card
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(AppSpacing.xl),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [AppColors.primary, AppColors.secondary],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.primary.withOpacity(0.3),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: -20,
                            top: -20,
                            child: Icon(
                              Icons.account_balance_wallet,
                              size: 150,
                              color: Colors.white.withOpacity(0.1),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Available Balance',
                                    style: TextStyle(color: Colors.white70, fontSize: 16, letterSpacing: 1.2),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Text(
                                      'PRIMARY',
                                      style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSpacing.md),
                              Text(
                                '$currency ${balance.toStringAsFixed(2)}',
                                style: AppTypography.displayMedium.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(color: Colors.black.withOpacity(0.2), blurRadius: 4, offset: const Offset(0, 2)),
                                  ],
                                ),
                              ),
                              const SizedBox(height: AppSpacing.lg),
                              Row(
                                children: [
                                  const Icon(Icons.shield, color: Colors.white70, size: 14),
                                  const SizedBox(width: 4),
                                  Text(
                                    'Secured by RazorpayX',
                                    style: AppTypography.bodySmall.copyWith(color: Colors.white70),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xl),

                    // Actions
                    if (!isBankLinked)
                      _buildInfoBanner(
                        context,
                        'Bank Account Not Linked',
                        'Link your bank account to enable withdrawals.',
                        Icons.warning_amber_rounded,
                        AppColors.warning,
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const BankLinkingScreen()),
                        ),
                      ),
                    
                    const SizedBox(height: AppSpacing.lg),
                    
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () => _showTopUpDialog(context),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primary,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                            ),
                            child: const Text('Top Up'),
                          ),
                        ),
                        const SizedBox(width: AppSpacing.md),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: isBankLinked
                                ? () => _showWithdrawDialog(context, balance)
                                : null,
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                            ),
                            child: const Text('Withdraw'),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: AppSpacing.xxl),
                    
                    Text('Recent Transactions', style: AppTypography.titleLarge),
                    const SizedBox(height: AppSpacing.md),
                    
                    if (transactions.isEmpty)
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 40),
                          child: Text('No transactions yet'),
                        ),
                      )
                    else
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: transactions.length,
                        separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.sm),
                        itemBuilder: (context, index) {
                          final tx = transactions[index];
                          final isCredit = tx['type'] == 'credit';
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: AppColors.grey100),
                            ),
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: 4),
                              leading: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: isCredit
                                      ? AppColors.success.withOpacity(0.1)
                                      : AppColors.error.withOpacity(0.1),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  isCredit ? Icons.add_rounded : Icons.remove_rounded,
                                  color: isCredit ? AppColors.success : AppColors.error,
                                ),
                              ),
                              title: Text(tx['description'] ?? 'Transaction', style: AppTypography.titleSmall),
                              subtitle: Text(tx['date'] ?? '', style: AppTypography.bodySmall),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '${isCredit ? '+' : '-'} ₹${tx['amount']}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: isCredit ? AppColors.success : AppColors.error,
                                      fontSize: 16,
                                    ),
                                  ),
                                  if (tx['status'] != null)
                                    Text(
                                      tx['status'].toString().toUpperCase(),
                                      style: TextStyle(
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold,
                                        color: tx['status'] == 'completed' ? AppColors.success : AppColors.warning,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                  ],
                ),
              );
            },
            orElse: () => Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                children: [
                  ShimmerLoaders.profileHeader(),
                  const SizedBox(height: AppSpacing.xl),
                  ShimmerLoaders.listTile(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildInfoBanner(BuildContext context, String title, String subtitle, IconData icon, Color color, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withValues(alpha: 0.3)),
        ),
        child: Row(
          children: [
            Icon(icon, color: color),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: color)),
                  Text(subtitle, style: AppTypography.bodySmall),
                ],
              ),
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }

  void _showTopUpDialog(BuildContext context) {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Top Up Wallet'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Enter amount to add to your wallet.'),
            const SizedBox(height: AppSpacing.md),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Amount (₹)',
                hintText: 'Min ₹100',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            Wrap(
              spacing: 8,
              children: [100, 500, 1000].map((amount) {
                return ActionChip(
                  label: Text('+₹$amount'),
                  onPressed: () => controller.text = amount.toString(),
                );
              }).toList(),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              final amount = double.tryParse(controller.text) ?? 0;
              if (amount < 100) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Minimum top-up is ₹100')),
                );
                return;
              }
              Navigator.pop(context);
              context.read<WalletBloc>().add(WalletEvent.initiateTopUp(amount: amount));
            },
            child: const Text('Pay Now'),
          ),
        ],
      ),
    );
  }

  void _showWithdrawDialog(BuildContext context, double maxBalance) {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Withdraw Money'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Enter amount to withdraw to your linked bank account.'),
            const SizedBox(height: AppSpacing.md),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Amount (₹)',
                hintText: 'Min ₹100',
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(
              'A 2% platform fee will be applicable.',
              style: AppTypography.bodySmall.copyWith(color: AppColors.warning),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              final amount = double.tryParse(controller.text) ?? 0;
              if (amount < 100) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Minimum withdrawal is ₹100')),
                );
                return;
              }
              if (amount > maxBalance) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Insufficient balance')),
                );
                return;
              }
              Navigator.pop(context);
              // In real app, we'd also collect bank info if not using Linked Account Fund ID
              context.read<WalletBloc>().add(WalletEvent.requestWithdrawal(
                    amount: amount,
                    bankAccount: 'PRE-LINKED', // Backend handles this using razorpay_account_id
                    ifsc: 'PRE-LINKED',
                    accountHolder: 'PRE-LINKED',
                  ));
            },
            child: const Text('Withdraw'),
          ),
        ],
      ),
    );
  }
}
