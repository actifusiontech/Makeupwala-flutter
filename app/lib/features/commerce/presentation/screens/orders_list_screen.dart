import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../../../shared/theme/app_typography.dart';
import '../bloc/commerce_bloc.dart';
import '../bloc/commerce_event.dart';
import '../bloc/commerce_state.dart';
import '../../domain/commerce_models.dart' as commerce;

class OrdersListScreen extends StatefulWidget {
  const OrdersListScreen({super.key});

  @override
  State<OrdersListScreen> createState() => _OrdersListScreenState();
}

class _OrdersListScreenState extends State<OrdersListScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
    context.read<CommerceBloc>().add(const CommerceEvent.fetchOrders());
  }

  void _handleTabSelection() {
    if (_tabController.index == 1 && !_tabController.indexIsChanging) {
      context.read<CommerceBloc>().add(const CommerceEvent.fetchSales());
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabSelection);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders & Sales'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: AppColors.white,
          tabs: const [
            Tab(text: 'My Purchases'),
            Tab(text: 'Store Sales'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildOrderList(isSales: false),
          _buildOrderList(isSales: true),
        ],
      ),
    );
  }

  Widget _buildOrderList({required bool isSales}) {
    return BlocBuilder<CommerceBloc, CommerceState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (_, __, orders) {
            final filteredOrders = isSales 
              ? state.sales
              : state.orders;

            if (filteredOrders.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(isSales ? Icons.monetization_on_outlined : Icons.shopping_bag_outlined, 
                         size: 64, color: AppColors.textTertiary),
                    const SizedBox(height: AppSpacing.md),
                    Text(
                      isSales ? 'No sales recorded yet' : 'You haven\'t placed any orders',
                      style: AppTypography.bodyLarge.copyWith(color: AppColors.textSecondary),
                    ),
                  ],
                ),
              );
            }

            return ListView.builder(
              padding: const EdgeInsets.all(AppSpacing.md),
              itemCount: filteredOrders.length,
              itemBuilder: (context, index) {
                final order = filteredOrders[index];
                return _OrderCard(order: order, isSales: isSales);
              },
            );
          },
          error: (msg) => Center(child: Text('Error: $msg')),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}

class _OrderCard extends StatelessWidget {
  final commerce.Order order;
  final bool isSales;

  const _OrderCard({required this.order, required this.isSales});

  @override
  Widget build(BuildContext context) {
    final date = order.createdAt != null 
        ? DateFormat('dd MMM yyyy').format(order.createdAt!) 
        : 'Unknown Date';

    return Card(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        title: Text('Order #${order.id.substring(0, 8).toUpperCase()}', 
                   style: AppTypography.titleMedium),
        subtitle: Text('$date • ₹${order.totalAmount.toStringAsFixed(2)}',
                      style: AppTypography.bodySmall),
        trailing: _StatusBadge(status: order.orderStatus),
        children: [
          const Divider(),
          ...order.items.map((item) => ListTile(
            title: Text(item.product?.name ?? 'Product'),
            subtitle: Text('Qty: ${item.quantity}'),
            trailing: Text('₹${item.totalPrice.toStringAsFixed(2)}'),
          )),
          if (isSales && order.referringArtistId != null)
            Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: Container(
                padding: const EdgeInsets.all(AppSpacing.sm),
                decoration: BoxDecoration(
                  color: AppColors.success.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.stars, color: AppColors.success, size: 20),
                    const SizedBox(width: AppSpacing.sm),
                    Text(
                      'Potential Commission: ₹${(order.totalAmount * 0.1).toStringAsFixed(2)}',
                      style: const TextStyle(color: AppColors.success, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          const SizedBox(height: AppSpacing.sm),
        ],
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final String status;
  const _StatusBadge({required this.status});

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (status.toLowerCase()) {
      case 'delivered': color = AppColors.success; break;
      case 'shipped': color = AppColors.secondary; break;
      case 'placed': color = AppColors.primary; break;
      case 'cancelled': color = Colors.red; break;
      default: color = AppColors.textSecondary;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        status.toUpperCase(),
        style: TextStyle(color: color, fontSize: 10, fontWeight: FontWeight.bold),
      ),
    );
  }
}
