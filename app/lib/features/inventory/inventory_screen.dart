import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../bloc/inventory_bloc.dart';
import '../data/inventory_repository.dart';
import '../data/inventory_item.dart';
import 'package:uuid/uuid.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InventoryBloc(repository: InventoryRepository())..add(const InventoryEvent.loadInventory()),
      child: const _InventoryView(),
    );
  }
}

class _InventoryView extends StatelessWidget {
  const _InventoryView();

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
        onPressed: () => _showAddProductDialog(context),
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: BlocBuilder<InventoryBloc, InventoryState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text('Error: $message')),
            loaded: (items) {
              if (items.isEmpty) {
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
                itemCount: items.length,
                itemBuilder: (context, index) {
                   return _buildProductCard(context, items[index]);
                },
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildProductCard(BuildContext context, InventoryItem p) {
    final double remaining = p.remainingUnits;
    final double total = p.totalUnits;
    final double progress = total > 0 ? remaining / total : 0;
    final bool isLow = remaining <= p.lowStockAlert;

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
                    Text(p.name, style: AppTypography.titleMedium),
                    Text(p.brand, style: AppTypography.bodySmall.copyWith(color: AppColors.textSecondary)),
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
                Text('Stock Level: ${remaining.toStringAsFixed(1)} / ${total.toStringAsFixed(1)} ${p.unitMeasure}', style: AppTypography.bodySmall),
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
                    onPressed: () => _showLogUsageDialog(context, p),
                    child: const Text('Log Usage'),
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                IconButton(
                  onPressed: () {}, // Edit
                  icon: const Icon(Icons.edit_outlined, size: 20, color: AppColors.textSecondary),
                ),
                IconButton(
                  onPressed: () {
                     context.read<InventoryBloc>().add(InventoryEvent.deleteItem(p.id));
                  }, 
                  icon: const Icon(Icons.delete_outline, size: 20, color: AppColors.error),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _showAddProductDialog(BuildContext context) {
    final nameCtrl = TextEditingController();
    final brandCtrl = TextEditingController();
    final totalCtrl = TextEditingController();

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
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
          TextButton(onPressed: () => Navigator.pop(dialogContext), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
               final item = InventoryItem(
                 id: const Uuid().v4(), // Need uuid package or generate random string
                 name: nameCtrl.text,
                 brand: brandCtrl.text,
                 totalUnits: double.tryParse(totalCtrl.text) ?? 50,
                 remainingUnits: double.tryParse(totalCtrl.text) ?? 50,
                 unitMeasure: 'ml', // Helper to pick measure in real app
               );
               context.read<InventoryBloc>().add(InventoryEvent.addItem(item));
               Navigator.pop(dialogContext);
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  void _showLogUsageDialog(BuildContext context, InventoryItem product) {
    final usageCtrl = TextEditingController(text: '1.0');

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('Log Usage: ${product.name}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Enter units used for your last booking:'),
            TextField(controller: usageCtrl, decoration: const InputDecoration(labelText: 'Units (ml/grams)')),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(dialogContext), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              context.read<InventoryBloc>().add(InventoryEvent.logUsage(product.id, double.tryParse(usageCtrl.text) ?? 1.0));
              Navigator.pop(dialogContext);
            },
            child: const Text('Confirm'),
          ),
        ],
      ),
    );
  }
}
