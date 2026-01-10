import 'package:flutter/material.dart';
import '../../domain/commerce_models.dart';
import '../widgets/product_card.dart';
import 'add_product_screen.dart'; // We will create this next
// import '../../data/commerce_repository.dart'; // Assuming this exists or we mock for now
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'bloc/commerce_bloc.dart'; // If exists

class BrandDashboardScreen extends StatefulWidget {
  const BrandDashboardScreen({super.key});

  @override
  State<BrandDashboardScreen> createState() => _BrandDashboardScreenState();
}

class _BrandDashboardScreenState extends State<BrandDashboardScreen> {
  // Mock data for initial implementation, will replace with API call integration
  List<Product> myProducts = []; 
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadMyProducts();
  }

  Future<void> _loadMyProducts() async {
    setState(() => isLoading = true);
    // Simulate API delay
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      isLoading = false;
      // Mock data
      myProducts = [
        // We will fetch this from API later
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brand Portal', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : myProducts.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.inventory_2_outlined, size: 64, color: Colors.grey),
                      const SizedBox(height: 16),
                      const Text(
                        'No Products Listed',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const Text('Start by adding your first product.'),
                      const SizedBox(height: 24),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const AddProductScreen()),
                          );
                        },
                        icon: const Icon(Icons.add),
                        label: const Text('Add Product'),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: myProducts.length,
                  itemBuilder: (context, index) {
                    final product = myProducts[index];
                    return ListTile(
                      leading: Image.network(
                        product.imageUrls.isNotEmpty ? product.imageUrls.first : 'https://via.placeholder.com/50',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                        errorBuilder: (_,__,___) => const Icon(Icons.error),
                      ),
                      title: Text(product.name),
                      subtitle: Text('Stock: ${product.stockQuantity} | Retail: ₹${product.retailPrice}'),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Navigate to edit
                        },
                      ),
                    );
                  },
                ),
      floatingActionButton: myProducts.isNotEmpty
          ? FloatingActionButton(
              onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddProductScreen()),
                  );
              },
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}
