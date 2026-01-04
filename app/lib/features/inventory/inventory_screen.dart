import 'package:flutter/material.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_typography.dart';
import '../../shared/theme/app_spacing.dart';
import 'data/discovery_repository.dart'; // Wait, I need inventory_repository.dart
import 'data/inventory_repository.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({super.key});

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  final InventoryRepository _repository = InventoryRepository();
  late Future<List<Map<String, dynamic>>> _inventoryFuture;

  @override
  void initState() {
    super.initState();
    _loadInventory();
  }

  void _loadInventory() {
    setState(() {
      _inventoryFuture = _repository.getInventory();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('My Inventory'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddProductDialog,
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _inventoryFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final products = snapshot.data ?? [];
          if (products.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.inventory_2_outlined, size: 64, color: AppColors.grey300),
                  const SizedBox(height: 16),
                  Text('No products tracked yet.', style: AppTypography.titleMedium.copyWith(color: AppColors.textSecondary)),
                  const SizedBox(height: 8),
                  Text('Start tracking your expensive kits.', style: AppTypography.bodySmall),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(AppSpacing.md),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return _buildProductCard(product);
            },
          );
        },
      ),
    );
  }

  Widget _buildProductCard(Map<String, dynamic> p) {
    final double remaining = (p['RemainingUnits'] as num).toDouble();
    final double total = (p['TotalUnits'] as num).toDouble();
    final double progress = total > 0 ? remaining / total : 0;
    final bool isLow = remaining <= (p['LowStockAlert'] as num).toDouble();

    return Card(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(p['Name'] ?? 'Unnamed Product', style: AppTypography.titleMedium),
                    Text(p['Brand'] ?? 'Generic', style: AppTypography.bodySmall.copyWith(color: AppColors.textSecondary)),
                  ],
                ),
                if (isLow)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.error.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text('LOW STOCK', style: AppTypography.bodySmall.copyWith(color: AppColors.error, fontWeight: FontWeight.bold)),
                  ),
              ],
            ),
            const SizedBox(height: AppSpacing.md),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Stock Level: ${remaining.toStringAsFixed(1)} / ${total.toStringAsFixed(1)} ${p['UnitMeasure'] ?? ''}', style: AppTypography.bodySmall),
                Text('${(progress * 100).toStringAsFixed(0)}%', style: AppTypography.bodySmall.copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: AppColors.grey100,
                color: progress < 0.2 ? AppColors.error : AppColors.primary,
                minHeight: 8,
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => _showLogUsageDialog(p),
                    child: const Text('Log Usage'),
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                IconButton(
                  onPressed: () {}, // Edit
                  icon: const Icon(Icons.edit_outlined, size: 20, color: AppColors.textSecondary),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _showAddProductDialog() {
    final nameCtrl = TextEditingController();
    final brandCtrl = TextEditingController();
    final totalCtrl = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Product'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(controller: nameCtrl, decoration: const InputDecoration(labelText: 'Product Name (e.g. Mac Foundation)')),
            TextField(controller: brandCtrl, decoration: const InputDecoration(labelText: 'Brand')),
            TextField(controller: totalCtrl, decoration: const InputDecoration(labelText: 'Total Units (e.g. 50)')),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () async {
              await _repository.addProduct({
                'Name': nameCtrl.text,
                'Brand': brandCtrl.text,
                'TotalUnits': double.tryParse(totalCtrl.text) ?? 50,
                'UnitMeasure': 'ml',
              });
              Navigator.pop(context);
              _loadInventory();
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  void _showLogUsageDialog(Map<String, dynamic> product) {
    final usageCtrl = TextEditingController(text: '1.0');

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Log Usage: ${product['Name']}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Enter units used for your last booking:'),
            TextField(controller: usageCtrl, decoration: const InputDecoration(labelText: 'Units (ml/grams)')),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () async {
              // Note: Ideally pass real booking ID, here we mock it for demo
              await _repository.logUsage('00000000-0000-0000-0000-000000000000', product['ID'], double.tryParse(usageCtrl.text) ?? 1.0);
              Navigator.pop(context);
              _loadInventory();
            },
            child: const Text('Confirm'),
          ),
        ],
      ),
    );
  }
}
