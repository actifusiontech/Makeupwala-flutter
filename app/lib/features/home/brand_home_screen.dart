import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../auth/bloc/auth_bloc.dart';
import 'data/brand_repository.dart';

import 'package:app/features/commerce/presentation/screens/brand_dashboard_screen.dart';
import 'package:app/features/commerce/presentation/screens/orders_list_screen.dart';
import 'package:app/features/commerce/presentation/screens/brand_inventory_screen.dart';
import 'package:app/features/commerce/presentation/screens/brand_profile_screen.dart';

class BrandHomeScreen extends StatefulWidget {
  const BrandHomeScreen({super.key});

  @override
  State<BrandHomeScreen> createState() => _BrandHomeScreenState();
}

class _BrandHomeScreenState extends State<BrandHomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      const BrandDashboardScreen(),
      const BrandInventoryScreen(), 
      const OrdersListScreen(),
      const BrandProfileScreen(),
    ];

    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.inventory), label: 'Inventory'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
