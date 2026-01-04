import 'package:flutter/material.dart';
import '../../domain/commerce_models.dart';

class BrandChallengesScreen extends StatefulWidget {
  const BrandChallengesScreen({Key? key}) : super(key: key);

  @override
  State<BrandChallengesScreen> createState() => _BrandChallengesScreenState();
}

class _BrandChallengesScreenState extends State<BrandChallengesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          'CHALLENGES',
          style: TextStyle(fontWeight: FontWeight.w900, letterSpacing: 1.2),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF1E293B),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 3, // Mock count
        itemBuilder: (context, index) {
          final isEco = index == 1;
          return _buildChallengeCard(
            context,
            title: isEco ? 'Eco-Friendly Artistry Audit' : 'Bridal Glow Challenge 2024',
            brand: isEco ? 'Mamaearth' : 'Lakme India',
            badge: isEco ? 'Green Certified' : 'Bridal Certified',
            status: index == 0 ? 'Submitted' : 'Open',
            isEco: isEco,
          );
        },
      ),
    );
  }

  Widget _buildChallengeCard(
    BuildContext context, {
    required String title,
    required String brand,
    required String badge,
    required String status,
    bool isEco = false,
  }) {
    return Container(
      margin: const EdgeInsets.bottom(16),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with Badge Image Placeholder
          Stack(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: isEco 
                      ? [Colors.emerald.shade400, Colors.emerald.shade700] 
                      : [const Color(0xFFFF6B6B), Colors.purple.shade400],
                  ),
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Center(
                  child: Icon(
                    isEco ? Icons.eco_rounded : Icons.workspace_premium_rounded,
                    size: 60,
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
              ),
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    status.toUpperCase(),
                    style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    if (isEco)
                      const Padding(
                        padding: EdgeInsets.only(right: 6),
                        child: Icon(Icons.eco, color: Colors.emerald, size: 16),
                      ),
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'By $brand',
                  style: TextStyle(color: Colors.slate.shade400, fontSize: 12),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    _buildFeature(Icons.calendar_today, 'Ends Jan 31'),
                    const SizedBox(width: 16),
                    _buildFeature(Icons.military_tech_outlined, badge),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                        child: const Text('VIEW DETAILS', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: status == 'Submitted' ? null : () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isEco ? Colors.emerald : const Color(0xFF1E293B),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          elevation: 0,
                        ),
                        child: Text(
                          status == 'Submitted' ? 'PENDING REVIEW' : 'APPLY NOW',
                          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeature(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, size: 14, color: Colors.slate.shade400),
        const SizedBox(width: 4),
        Text(label, style: TextStyle(color: Colors.slate.shade600, fontSize: 12)),
      ],
    );
  }
}
