import 'package:flutter/material.dart';
import '../../data/brand_repository.dart';
import '../../../../core/network/api_client.dart';

class BrandProfileScreen extends StatefulWidget {
  const BrandProfileScreen({super.key});

  @override
  State<BrandProfileScreen> createState() => _BrandProfileScreenState();
}

class _BrandProfileScreenState extends State<BrandProfileScreen> {
  late Future<Map<String, dynamic>> _profileFuture;
  final _repository = BrandRepository(ApiClient().dio);

  @override
  void initState() {
    super.initState();
    _profileFuture = _repository.getBrandProfile();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: _profileFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(body: Center(child: CircularProgressIndicator()));
        }
        if (snapshot.hasError) {
          return Scaffold(body: Center(child: Text('Error: ${snapshot.error}')));
        }

        final profile = snapshot.data ?? {};
        
        return Scaffold(
          appBar: AppBar(
            title: const Text('Brand Profile'),
            actions: [
              IconButton(icon: const Icon(Icons.edit), onPressed: () {}),
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.purple[100],
                  child: const Icon(Icons.business, size: 50, color: Colors.purple),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: Text(
                  profile['name'] ?? 'Makeupwala Professional',
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  profile['type'] ?? 'Luxury Cosmetics',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
              const SizedBox(height: 32),
              const Text('Company Info', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 16),
              _DetailTile(label: 'Website', value: profile['website'] ?? 'www.makeupwala.com'),
              _DetailTile(label: 'Email', value: profile['email'] ?? 'contact@brand.com'),
              _DetailTile(label: 'Phone', value: profile['phone'] ?? '+91 9876543210'),
              _DetailTile(label: 'Location', value: profile['location'] ?? 'Mumbai, India'),
              const SizedBox(height: 32),
              const Text('Brand Story', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 8),
              Text(
                profile['description'] ?? 'Leading professional makeup brand providing high-quality tools and cosmetics to artists globally.',
                style: const TextStyle(height: 1.5),
              ),
              const SizedBox(height: 32),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(foregroundColor: Colors.purple),
                child: const Text('Manage Brand Assets'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _DetailTile extends StatelessWidget {
  final String label;
  final String value;

  const _DetailTile({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: Colors.grey[600], fontSize: 14)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        ],
      ),
    );
  }
}
