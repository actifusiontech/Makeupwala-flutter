import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import '../../bloc/commerce_bloc.dart';
import '../../bloc/commerce_event.dart';
import '../../bloc/commerce_state.dart';
import '../../domain/commerce_models.dart';
import 'add_product_screen.dart';
import 'package:app/features/auth/bloc/auth_bloc.dart';

class BrandInventoryScreen extends StatefulWidget {
  const BrandInventoryScreen({super.key});

  @override
  State<BrandInventoryScreen> createState() => _BrandInventoryScreenState();
}

class _BrandInventoryScreenState extends State<BrandInventoryScreen> {
  @override
  void initState() {
    super.initState();
    final authState = context.read<AuthBloc>().state;
    authState.maybeWhen(
      authenticated: (user) {
        context.read<CommerceBloc>().add(CommerceEvent.fetchProducts(brandId: user.id));
      },
      orElse: () {
        context.read<CommerceBloc>().add(const CommerceEvent.fetchProducts());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text('My Products'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        elevation: 0,
      ),
      body: BlocBuilder<CommerceBloc, CommerceState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (products, shopItems, orders, sales, commissions) {
              if (products.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.inventory_2_outlined, size: 64, color: AppColors.grey300),
                      const SizedBox(height: 16),
                      Text('No products listed yet.', style: AppTypography.titleMedium),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AddProductScreen()),
                        ),
                        child: const Text('Add Your First Product'),
                      ),
                    ],
                  ),
                );
              }

              return ListView.builder(
                padding: const EdgeInsets.all(AppSpacing.md),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return _BrandProductCard(product: product);
                },
              );
            },
            error: (msg) => Center(child: Text('Error: $msg')),
            orElse: () => const SizedBox(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddProductScreen()),
        ),
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

class _BrandProductCard extends StatelessWidget {
  final Product product;
  const _BrandProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: AppColors.grey100,
                borderRadius: BorderRadius.circular(8),
                image: product.imageUrls.isNotEmpty 
                  ? DecorationImage(image: NetworkImage(product.imageUrls.first), fit: BoxFit.cover)
                  : null,
              ),
              child: product.imageUrls.isEmpty ? const Icon(Icons.image, color: AppColors.grey300) : null,
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name, style: AppTypography.titleMedium),
                  Text('SKU: ${product.id.substring(0, 8).toUpperCase()}', style: AppTypography.bodySmall),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text('₹${product.wholesalePrice}', style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary)),
                      const SizedBox(width: 8),
                      Text('Stock: ${product.stockQuantity}', style: AppTypography.bodySmall),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.edit_outlined, color: AppColors.secondary),
              onPressed: () {
                // TODO: Navigate to Edit Product
              },
            ),
          ],
        ),
      ),
    );
  }
}
