import 'package:flutter/material.dart';
import '../../domain/commerce_models.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback? onAddToCart;
  final VoidCallback? onAddToShop;
  final bool isWholesale;

  const ProductCard({
    Key? key,
    required this.product,
    this.onAddToCart,
    this.onAddToShop,
    this.isWholesale = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Section
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: product.imageUrls.isNotEmpty
                    ? Image.network(
                        product.imageUrls.first,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            _placeholderImage(),
                      )
                    : _placeholderImage(),
              ),
              if (product.isSustainable)
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.eco, color: Colors.emerald, size: 16),
                  ),
                ),
            ],
          ),

          // Details Section
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xFF1E293B),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  product.category,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey.shade300,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          isWholesale
                              ? '₹${product.wholesalePrice.toInt()}'
                              : '₹${product.retailPrice.toInt()}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                            color: Color(0xFFFF6B6B),
                          ),
                        ),
                        if (isWholesale)
                          Text(
                            'Retail: ₹${product.retailPrice.toInt()}',
                            style: const TextStyle(
                              fontSize: 10,
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey,
                            ),
                          ),
                      ],
                    ),
                    if (onAddToShop != null)
                      GestureDetector(
                        onTap: onAddToShop,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF6B6B).withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.storefront_outlined,
                            color: Color(0xFFFF6B6B),
                            size: 20,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onAddToCart,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E293B),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      elevation: 0,
                    ),
                    child: const Text(
                      'BUY WHOLESALE',
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _placeholderImage() {
    return Container(
      color: Colors.grey.shade100,
      child: Icon(Icons.inventory_2_outlined, color: Colors.grey.shade300, size: 40),
    );
  }
}
