import 'package:flutter/material.dart';
import '../../domain/commerce_models.dart';
import '../widgets/product_card.dart';

class MyShopScreen extends StatefulWidget {
  const MyShopScreen({Key? key}) : super(key: key);

  @override
  State<MyShopScreen> createState() => _MyShopScreenState();
}

class _MyShopScreenState extends State<MyShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          'MY STORE',
          style: TextStyle(fontWeight: FontWeight.w900, letterSpacing: 1.2),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share_outlined),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Shop link copied to clipboard!')),
              );
            },
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF1E293B),
      ),
      body: Column(
        children: [
          // Earnings Overview
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF1E293B), Color(0xFF334155)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF1E293B).withOpacity(0.3),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    'RETAIL COMMISSION EARNINGS',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '₹12,450.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildStat('84', 'Customers'),
                      Container(width: 1, height: 20, color: Colors.white24),
                      _buildStat('156', 'Orders'),
                      Container(width: 1, height: 20, color: Colors.white24),
                      _buildStat('10%', 'Avg Com.'),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Curated Catalog Header
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'CURATED CATALOG',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 12,
                    color: Color(0xFF1E293B),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Manage Products',
                    style: TextStyle(fontSize: 12, color: Color(0xFFFF6B6B), fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),

          // Product Grid
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: 4, // Mock count
              itemBuilder: (context, index) {
                final product = Product(
                  id: 'curated-$index',
                  brandId: 'b1',
                  name: index % 2 == 0 ? 'Velvet Liquid Matte' : 'Ultimate Glow Serum',
                  description: 'Curated by me for the perfect glow.',
                  category: index % 2 == 0 ? 'Lips' : 'Skincare',
                  sku: 'SKU-$index',
                  wholesalePrice: 0,
                  retailPrice: index % 2 == 0 ? 950 : 3200,
                  imageUrls: [],
                );

                return ProductCard(
                  product: product,
                  isWholesale: false,
                  onAddToCart: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('B2C Checkout Initialized')),
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

  Widget _buildStat(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white60, fontSize: 10),
        ),
      ],
    );
  }
}
