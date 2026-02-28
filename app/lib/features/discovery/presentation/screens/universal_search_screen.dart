import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import '../../data/models/search_models.dart';
import '../../data/discovery_repository.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

class UniversalSearchScreen extends StatefulWidget {
  const UniversalSearchScreen({Key? key}) : super(key: key);

  @override
  State<UniversalSearchScreen> createState() => _UniversalSearchScreenState();
}

class _UniversalSearchScreenState extends State<UniversalSearchScreen> {
  final DiscoveryRepository _repository = DiscoveryRepository();
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;
  UniversalSearchResult? _results;
  bool _isLoading = false;

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (query.isNotEmpty) {
        _performSearch(query);
      } else {
        setState(() {
          _results = null;
          _isLoading = false;
        });
      }
    });
  }

  Future<void> _performSearch(String query) async {
    setState(() => _isLoading = true);
    try {
      final results = await _repository.universalSearch(query);
      setState(() {
        _results = results;
        _isLoading = false;
      });
    } catch (e) {
      setState(() => _isLoading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Search error: $e')),
      );
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.pop(),
        ),
        title: TextField(
          controller: _searchController,
          autofocus: true,
          onChanged: _onSearchChanged,
          decoration: InputDecoration(
            hintText: 'Search Artists, Products, Academy...',
            hintStyle: GoogleFonts.lato(color: Colors.grey),
            border: InputBorder.none,
          ),
          style: GoogleFonts.lato(fontSize: 16),
        ),
        actions: [
          if (_searchController.text.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.clear, color: Colors.grey),
              onPressed: () {
                _searchController.clear();
                _onSearchChanged('');
              },
            ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator(color: AppColors.primary))
          : _results == null
              ? _buildInitialState()
              : _buildSearchResults(),
    );
  }

  Widget _buildInitialState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(FontAwesomeIcons.magnifyingGlass, size: 50, color: Colors.grey[300]),
          const SizedBox(height: 16),
          Text(
            'Discover everything Makeupwala',
            style: GoogleFonts.playfairDisplay(color: Colors.grey, fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchResults() {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelColor: AppColors.primary,
            unselectedLabelColor: Colors.grey,
            indicatorColor: AppColors.primary,
            tabs: const [
              Tab(text: 'Artists'),
              Tab(text: 'Pro Store'),
              Tab(text: 'Academy'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                _buildResultList(_results!.artists, 'No artists found'),
                _buildResultList(_results!.products, 'No products found'),
                _buildResultList(_results!.courses, 'No courses found'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildResultList(List<SearchResultItem> items, String emptyMsg) {
    if (items.isEmpty) {
      return Center(child: Text(emptyMsg, style: GoogleFonts.lato(color: Colors.grey)));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(AppSpacing.md),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return _buildResultCard(item);
      },
    );
  }

  Widget _buildResultCard(SearchResultItem item) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: 50,
            height: 50,
            color: Colors.pink[50],
            child: item.imageUrl != null
                ? Image.network(item.imageUrl!, fit: BoxFit.cover)
                : Icon(Icons.image, color: Colors.pink[200]),
          ),
        ),
        title: Text(
          item.title,
          style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.subtitle, style: GoogleFonts.lato(fontSize: 12, color: Colors.grey[600]), maxLines: 1, overflow: TextOverflow.ellipsis),
            if (item.price != null)
              Text('₹${item.price}', style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold, fontSize: 14)),
          ],
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: () {
          // Navigate based on item type (future optimization: add 'type' to item)
        },
      ),
    ).animate().fadeIn().slideX(begin: 0.1, end: 0);
  }
}
