import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/commerce_bloc.dart';
import '../bloc/commerce_event.dart';
import '../bloc/commerce_state.dart';
import '../domain/commerce_models.dart';
import '../widgets/product_card.dart';
import '../../auth/bloc/auth_bloc.dart';

class MyShopScreen extends StatefulWidget {
  const MyShopScreen({Key? key}) : super(key: key);

  @override
  State<MyShopScreen> createState() => _MyShopScreenState();
}

class _MyShopScreenState extends State<MyShopScreen> {
  @override
  void initState() {
    super.initState();
    final authState = context.read<AuthBloc>().state;
    authState.maybeWhen(
      authenticated: (user) {
        context.read<CommerceBloc>().add(CommerceEvent.fetchArtistShop(user.id));
        context.read<CommerceBloc>().add(const CommerceEvent.fetchCommissions());
      },
      orElse: () {},
    );
  }

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
      body: BlocBuilder<CommerceBloc, CommerceState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (_, shopItems, orders, commissions) {
              final totalEarnings = commissions.fold(0.0, (sum, item) => sum + item.amount);
              
              return RefreshIndicator(
                onRefresh: () async {
                  final authState = context.read<AuthBloc>().state;
                  authState.maybeWhen(
                    authenticated: (user) {
                      context.read<CommerceBloc>().add(CommerceEvent.fetchArtistShop(user.id));
                      context.read<CommerceBloc>().add(const CommerceEvent.fetchCommissions());
                    },
                    orElse: () {},
                  );
                },
                child: Column(
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
                            Text(
                              '₹${totalEarnings.toStringAsFixed(2)}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _buildStat(shopItems.length.toString(), 'Curation'),
                                Container(width: 1, height: 20, color: Colors.white24),
                                _buildStat(commissions.length.toString(), 'Earnings'),
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
                            onPressed: () {
                              Navigator.pushNamed(context, '/pro-store');
                            },
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
                      child: shopItems.isEmpty 
                        ? const Center(child: Text('No products curated yet.'))
                        : GridView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.7,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                          ),
                          itemCount: shopItems.length,
                          itemBuilder: (context, index) {
                            final item = shopItems[index];
                            if (item.product == null) return const SizedBox();
                            
                            return ProductCard(
                              product: item.product!,
                              isWholesale: false,
                              onAddToCart: () {
                                // Guest Checkout Logic
                              },
                            );
                          },
                        ),
                    ),
                  ],
                ),
              );
            },
            error: (msg) => Center(child: Text('Error: $msg')),
            orElse: () => const SizedBox(),
          );
        },
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
