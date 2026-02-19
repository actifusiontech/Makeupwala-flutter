import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'data/discovery_repository.dart';
import 'data/moodboard_repository.dart';
import 'bloc/moodboard/moodboard_bloc.dart';
import 'bloc/moodboard/moodboard_event.dart';
import 'widgets/moodboard_tab.dart';
import '../auth/bloc/auth_bloc.dart';

class LookBookScreen extends StatefulWidget {
  const LookBookScreen({super.key});

  @override
  State<LookBookScreen> createState() => _LookBookScreenState();
}

class _LookBookScreenState extends State<LookBookScreen> with SingleTickerProviderStateMixin {
  final DiscoveryRepository _discoveryRepository = DiscoveryRepository();
  final MoodboardRepository _moodboardRepository = MoodboardRepository();
  
  late Future<List<Map<String, dynamic>>> _looksFuture;
  late Future<List<String>> _tagsFuture;
  late TabController _tabController;

  final Set<String> _selectedTags = {};

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tagsFuture = _discoveryRepository.getLookbookTags();
    _loadLooks();
  }

  void _loadLooks() {
    setState(() {
      _looksFuture = _selectedTags.isEmpty 
          ? _discoveryRepository.getRecommendations() 
          : _discoveryRepository.searchLooks(tags: _selectedTags.toList());
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
    final user = context.read<AuthBloc>().state.maybeWhen(
      authenticated: (u) => u,
      orElse: () => null,
    );

    return BlocProvider(
      create: (context) => MoodboardBloc(repository: _moodboardRepository),
      child: Scaffold(
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
            _buildExploreView(context, user?.id),
            user != null 
                ? MoodboardTab(userId: user.id) 
                : const Center(child: Text('Please login to view your moodboard')),
          ],
        ),
      ),
    );
  }

  Widget _buildExploreView(BuildContext context, String? userId) {
    return Column(
      children: [
        // Filter Chips
        SizedBox(
          height: 60,
          child: FutureBuilder<List<String>>(
            future: _tagsFuture,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2)));
              }
              final tags = snapshot.data!;
              return ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.sm),
                scrollDirection: Axis.horizontal,
                itemCount: tags.length,
                separatorBuilder: (c, i) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  final tag = tags[index];
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
                  return _buildLookCard(context, look, userId);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildLookCard(BuildContext context, Map<String, dynamic> look, String? userId) {
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
                child: GestureDetector(
                  onTap: () {
                    if (userId != null) {
                      context.read<MoodboardBloc>().add(
                        MoodboardEvent.addToMoodboard(
                          userId, 
                          look['URL'] ?? '', 
                          caption: look['Caption']
                        )
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Added to Moodboard'), duration: Duration(seconds: 1)),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Please login to save looks')),
                      );
                    }
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.5),
                    radius: 16,
                    child: const Icon(Icons.favorite_border, color: Colors.white, size: 18),
                  ),
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
