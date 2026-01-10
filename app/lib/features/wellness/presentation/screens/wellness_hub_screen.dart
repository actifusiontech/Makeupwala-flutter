import 'package:flutter/material.dart';
import '../../data/wellness_repository.dart';
import '../../data/models/wellness_models.dart';
import 'package:makeupwala/core/network/api_client.dart';

class WellnessHubScreen extends StatefulWidget {
  const WellnessHubScreen({Key? key}) : super(key: key);

  @override
  _WellnessHubScreenState createState() => _WellnessHubScreenState();
}

class _WellnessHubScreenState extends State<WellnessHubScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late WellnessRepository _repository;
  List<WellnessPartner> _partners = [];
  List<WellnessPackage> _packages = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _repository = WellnessRepository(ApiClient());
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      final partners = await _repository.getPartners();
      final packages = await _repository.getPackages();
      setState(() {
        _partners = partners;
        _packages = packages;
        _isLoading = false;
      });
    } catch (e) {
      setState(() => _isLoading = false);
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wellness Sanctuary'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [Tab(text: 'Retreats & Spas'), Tab(text: 'Packages')],
        ),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: _partners.length,
                  itemBuilder: (context, index) {
                    final p = _partners[index];
                    return Card(
                      margin: const EdgeInsets.all(8),
                      child: ListTile(
                        leading: const Icon(Icons.spa, size: 40, color: Colors.teal),
                        title: Text(p.name),
                        subtitle: Text('${p.type} • ${p.location}, ${p.country}'),
                        trailing: const Icon(Icons.verified, color: Colors.blue),
                      ),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: _packages.length,
                  itemBuilder: (context, index) {
                    final p = _packages[index];
                    return Card(
                      margin: const EdgeInsets.all(8),
                      child: ListTile(
                        title: Text(p.name),
                        subtitle: Text('${p.durationDays} Days • ${p.description}'),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('${p.currency} ${p.price}', style: const TextStyle(fontWeight: FontWeight.bold)),
                            const Icon(Icons.arrow_forward_ios, size: 16),
                          ],
                        ),
                        onTap: () => _showBookingDialog(context, p),
                      ),
                    );
                  },
                ),
              ],
            ),
    );
  }

  Future<void> _showBookingDialog(BuildContext context, WellnessPackage p) async {
    final guestsController = TextEditingController(text: '1');
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Book ${p.name}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Price: ${p.currency} ${p.price} per person'),
            const SizedBox(height: 10),
            TextField(
              controller: guestsController,
              decoration: const InputDecoration(labelText: 'Number of Guests'),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () async {
              try {
                final guests = int.tryParse(guestsController.text) ?? 1;
                // Use a proper date picker in real app, defaulting to tomorrow for demo
                final date = DateTime.now().add(const Duration(days: 1)).toIso8601String().split('T')[0];
                
                await _repository.bookPackage(p.id, date, guests);
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Booking Confirmed!')));
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
              }
            },
            child: const Text('Confirm Booking'),
          ),
        ],
      ),
    );
  }
}
