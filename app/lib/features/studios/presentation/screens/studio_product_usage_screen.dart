import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../bloc/inventory/product_usage_bloc.dart';

class StudioProductUsageScreen extends StatefulWidget {
  final String studioId;
  final String visitId;

  const StudioProductUsageScreen({
    super.key,
    required this.studioId,
    required this.visitId,
  });

  @override
  State<StudioProductUsageScreen> createState() => _StudioProductUsageScreenState();
}

class _StudioProductUsageScreenState extends State<StudioProductUsageScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ProductUsageBloc>().add(const ProductUsageEvent.fetchInventory());
  }

  void _showLogUsageDialog(dynamic product) {
    final unitsController = TextEditingController();
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Log Usage: ${product['Name']}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Stock Remaining: ${product['RemainingUnits']} ${product['UnitMeasure']}'),
            const SizedBox(height: 16),
            TextField(
              controller: unitsController,
              decoration: InputDecoration(
                labelText: 'Units Used',
                suffixText: product['UnitMeasure'],
              ),
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              final units = double.tryParse(unitsController.text) ?? 0.0;
              if (units > 0) {
                context.read<ProductUsageBloc>().add(
                  ProductUsageEvent.logUsage(
                    studioId: widget.studioId,
                    visitId: widget.visitId,
                    productId: product['ID'],
                    units: units,
                  ),
                );
                Navigator.pop(context);
              }
            },
            child: const Text('Log'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Products Used'),
        backgroundColor: Colors.teal[800],
        foregroundColor: Colors.white,
      ),
      body: BlocConsumer<ProductUsageBloc, ProductUsageState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))),
            error: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            inventoryLoaded: (products) => _buildInventoryList(products),
            orElse: () => const Center(child: Text('Loading inventory...')),
          );
        },
      ),
    );
  }

  Widget _buildInventoryList(List products) {
    if (products.isEmpty) {
      return const Center(child: Text('No products found in inventory.'));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(AppSpacing.screenPadding),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        final remaining = product['RemainingUnits'] ?? 0.0;
        final measure = product['UnitMeasure'] ?? 'units';
        final isLow = remaining <= (product['LowStockAlert'] ?? 0.0);

        return Card(
          elevation: 2,
          margin: const EdgeInsets.only(bottom: AppSpacing.md),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: isLow ? Colors.red[50] : Colors.teal[50],
              child: Icon(Icons.inventory_2_outlined, color: isLow ? Colors.red : Colors.teal),
            ),
            title: Text(product['Name'] ?? 'Unknown Item', style: AppTypography.titleMedium),
            subtitle: Text('Brand: ${product['Brand']} • $remaining $measure left'),
            trailing: isLow 
              ? const Chip(label: Text('Low Stock', style: TextStyle(fontSize: 10, color: Colors.white)), backgroundColor: Colors.red)
              : const Icon(Icons.add_circle_outline, color: Colors.teal),
            onTap: () => _showLogUsageDialog(product),
          ),
        );
      },
    );
  }
}
