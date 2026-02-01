import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'data/discovery_repository.dart';

class LookBookScreen extends StatefulWidget {
  const LookBookScreen({super.key});

  @override
  State<LookBookScreen> createState() => _LookBookScreenState();
}

class _LookBookScreenState extends State<LookBookScreen> with SingleTickerProviderStateMixin {
  final DiscoveryRepository _repository = DiscoveryRepository();
  late Future<List<Map<String, dynamic>>> _looksFuture;
  
  final List<String> _tags = ['Bridal', 'Party', 'HD Makeup', 'Airbrush', 'Mehendi', 'Reception'];
  final Set<String> _selectedTags = {};

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _loadLooks();
  }

  void _loadLooks() {
    setState(() {
      _looksFuture = _selectedTags.isEmpty 
          ? _repository.getRecommendations() 
          : _repository.searchLooks(tags: _selectedTags.toList());
    });
  }

  void _toggleTag(String tag) {
    setState(() {
      if (_selectedTags.contains(tag)) {
        _selectedTags.remove(tag);
      } else {
        _selectedTags.add(tag);
      }
      _loadLooks();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('Look Book'),
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.textPrimary,
        elevation: 0,
        bottom: TabBar(
          controller: _tabController,
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.textSecondary,
          indicatorColor: AppColors.primary,
          tabs: const [
             Tab(text: 'Explore'),
             Tab(text: 'My Moodboard'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildExploreView(),
          const Center(child: Text('Moodboard Coming Soon')), // Placeholder for now
        ],
      ),
    );
  }

  Widget _buildExploreView() {
    return Column(
      children: [
        // Filter Chips
        SizedBox(
          height: 60,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.sm),
            scrollDirection: Axis.horizontal,
            itemCount: _tags.length,
            separatorBuilder: (c, i) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final tag = _tags[index];
              final isSelected = _selectedTags.contains(tag);
              return FilterChip(
                label: Text(tag),
                selected: isSelected,
                onSelected: (_) => _toggleTag(tag),
                selectedColor: AppColors.primary.withOpacity(0.2),
                labelStyle: TextStyle(
                  color: isSelected ? AppColors.primary : AppColors.textSecondary,
                  fontWeight: isSelected ? FontWeight.bold : null,
                ),
                backgroundColor: AppColors.grey50,
                side: BorderSide(color: isSelected ? AppColors.primary : AppColors.grey300),
              );
            },
          ),
        ),
        
        // Grid
        Expanded(
          child: FutureBuilder<List<Map<String, dynamic>>>(
            future: _looksFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              }
              
              final looks = snapshot.data ?? [];
              if (looks.isEmpty) {
                return const Center(child: Text('No looks found matching your criteria.'));
              }

              return MasonryGridView.count(
                padding: const EdgeInsets.all(AppSpacing.md),
                crossAxisCount: 2,
                mainAxisSpacing: AppSpacing.md,
                crossAxisSpacing: AppSpacing.md,
                itemCount: looks.length,
                itemBuilder: (context, index) {
                  final look = looks[index];
                  return _buildLookCard(look);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildLookCard(Map<String, dynamic> look) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                look['URL'] ?? 'https://via.placeholder.com/150',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 150, 
                  color: Colors.grey[300],
                  child: const Center(child: Icon(Icons.broken_image)),
                ),
              ),
              Positioned(
                right: 8,
                top: 8,
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  radius: 16,
                  child: const Icon(Icons.favorite_border, color: Colors.white, size: 18),
                ),
              )
            ],
          ),
          if (look['Caption'] != null && look['Caption'].toString().isNotEmpty)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              look['Caption'], 
              maxLines: 2, 
              overflow: TextOverflow.ellipsis,
              style: AppTypography.bodySmall.copyWith(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
