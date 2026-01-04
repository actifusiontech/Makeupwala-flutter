import 'package:flutter/material.dart';
import '../../domain/commerce_models.dart';
import '../widgets/product_card.dart';

class ProStoreScreen extends StatefulWidget {
  const ProStoreScreen({Key? key}) : super(key: key);

  @override
  State<ProStoreScreen> createState() => _ProStoreScreenState();
}

class _ProStoreScreenState extends State<ProStoreScreen> {
  final List<String> categories = ['All', 'Face', 'Eyes', 'Lips', 'Skincare', 'Tools'];
  String selectedCategory = 'All';
  bool showSustainableOnly = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          'PRO-STORE',
          style: TextStyle(fontWeight: FontWeight.w900, letterSpacing: 1.2),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.history_outlined),
            onPressed: () {},
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF1E293B),
      ),
      body: Column(
        children: [
          // Search & Filter Header
          Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search wholesale products...',
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.slate.shade50,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  ),
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // Eco Filter Toggle
                      FilterChip(
                        label: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.eco, size: 14, color: Colors.emerald),
                            SizedBox(width: 4),
                            Text('Eco-Certified', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        selected: showSustainableOnly,
                        onSelected: (val) => setState(() => showSustainableOnly = val),
                        backgroundColor: Colors.white,
                        selectedColor: Colors.emerald.withOpacity(0.1),
                        checkmarkColor: Colors.emerald,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.slate.shade200),
                        ),
                      ),
                      const SizedBox(width: 8),
                      ...categories.map((cat) => Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: ChoiceChip(
                              label: Text(cat, style: const TextStyle(fontSize: 12)),
                              selected: selectedCategory == cat,
                              onSelected: (val) => setState(() => selectedCategory = cat),
                              backgroundColor: Colors.white,
                              selectedColor: const Color(0xFF1E293B),
                              labelStyle: TextStyle(
                                color: selectedCategory == cat ? Colors.white : const Color(0xFF1E293B),
                                fontWeight: FontWeight.bold,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.slate.shade200),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Product Grid
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.65,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: 6, // Mock count
              itemBuilder: (context, index) {
                // Mocking a product
                final product = Product(
                  id: 'p$index',
                  brandId: 'b1',
                  name: index % 2 == 0 ? 'Pro Matte Lipstick' : 'Hydrating Foundation',
                  description: 'Description here',
                  category: index % 2 == 0 ? 'Lips' : 'Face',
                  sku: 'SKU-$index',
                  wholesalePrice: index % 2 == 0 ? 450 : 1200,
                  retailPrice: index % 2 == 0 ? 899 : 2499,
                  isSustainable: index % 3 == 0,
                  imageUrls: [],
                );

                if (showSustainableOnly && !product.isSustainable) return const SizedBox.shrink();

                return ProductCard(
                  product: product,
                  onAddToCart: () {
                    // Navigate to Checkout with single item for simpler flow
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => B2BCheckoutScreen(
                          cartItems: [product],
                          commerceRepository: context.read<CommerceRepository>(), // Assuming Provider/Riverpod
                        ),
                      ),
                    );
                  },
                  onAddToShop: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Product added to your personal shop!')),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
