import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:app/features/commerce/data/commerce_repository.dart';
import 'b2b_checkout_screen.dart';
import '../../domain/commerce_models.dart';
import '../widgets/product_card.dart';
import 'package:app/shared/theme/app_colors.dart';

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
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fetchProducts();
    });
  }

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
      body: BlocListener<CommerceBloc, CommerceState>(
        listener: (context, state) {
          state.maybeWhen(
            actionSuccess: (message) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
            },
            orElse: () {},
          );
        },
        child: Column(
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
                      fillColor: AppColors.grey50,
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
                              Icon(Icons.eco, size: 14, color: AppColors.emerald),
                              SizedBox(width: 4),
                              Text('Eco-Certified', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                          selected: showSustainableOnly,
                          onSelected: (val) {
                            setState(() => showSustainableOnly = val);
                            _fetchProducts();
                          },
                          backgroundColor: Colors.white,
                          selectedColor: AppColors.emerald.withOpacity(0.1),
                          checkmarkColor: AppColors.emerald,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: AppColors.slate100),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ...categories.map((cat) => Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: ChoiceChip(
                                label: Text(cat, style: const TextStyle(fontSize: 12)),
                                selected: selectedCategory == cat,
                                onSelected: (val) {
                                  if (val) {
                                    setState(() => selectedCategory = cat);
                                    _fetchProducts();
                                  }
                                },
                                backgroundColor: Colors.white,
                                selectedColor: const Color(0xFF1E293B),
                                labelStyle: TextStyle(
                                  color: selectedCategory == cat ? Colors.white : const Color(0xFF1E293B),
                                  fontWeight: FontWeight.bold,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(color: AppColors.slate100),
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
              child: BlocBuilder<CommerceBloc, CommerceState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => const Center(child: CircularProgressIndicator()),
                    loaded: (products, _, __) {
                      if (products.isEmpty) {
                        return const Center(child: Text('No products found'));
                      }
                      return GridView.builder(
                        padding: const EdgeInsets.all(16),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.65,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                        ),
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          final product = products[index];
                          return ProductCard(
                            product: product,
                            onAddToCart: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => B2BCheckoutScreen(
                                    cartItems: [product],
                                    commerceRepository: context.read<CommerceRepository>(),
                                  ),
                                ),
                              );
                            },
                            onAddToShop: () {
                              context.read<CommerceBloc>().add(CommerceEvent.addToShop(product.id));
                            },
                          );
                        },
                      );
                    },
                    error: (msg) => Center(child: Text('Error: $msg')),
                    orElse: () => const SizedBox(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _fetchProducts() {
    context.read<CommerceBloc>().add(CommerceEvent.fetchProducts(
      category: selectedCategory == 'All' ? null : selectedCategory,
      sustainable: showSustainableOnly ? true : null,
    ));
  }
}
