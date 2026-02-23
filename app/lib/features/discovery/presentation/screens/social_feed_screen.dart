import 'package:flutter/material.dart';
import '../../data/models/post_model.dart';
import '../../data/repositories/discovery_repository.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/widgets/shimmer_loaders.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'dart:ui';

class SocialFeedScreen extends StatefulWidget {
  const SocialFeedScreen({Key? key}) : super(key: key);

  @override
  State<SocialFeedScreen> createState() => _SocialFeedScreenState();
}

class _SocialFeedScreenState extends State<SocialFeedScreen> {
  late Future<List<PostModel>> _feedFuture;
  final DiscoveryRepository _repository = DiscoveryRepository();
  
  final List<String> categories = ['All', 'Bridal', 'Party', 'Editorial', 'SFX', 'Traditional', 'Minimalist'];
  String selectedCategory = 'All';
  String sortBy = 'recent'; // recent, trending

  @override
  void initState() {
    super.initState();
    _loadFeed();
  }

  void _loadFeed() {
    setState(() {
      _feedFuture = _repository.getFeed(
        tag: selectedCategory == 'All' ? null : selectedCategory,
        sortBy: sortBy,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop the Look', style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold, fontSize: 22)),
        backgroundColor: Colors.white,
        foregroundColor: AppColors.primary,
        elevation: 0,
        actions: [
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.magnifyingGlass, size: 18),
            onPressed: () => context.push('/universal-search'),
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.bell, size: 18),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Filter & Sort Header
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                  child: Row(
                    children: [
                      // Sort Toggle
                      ActionChip(
                        avatar: FaIcon(
                          sortBy == 'trending' ? FontAwesomeIcons.fire : FontAwesomeIcons.clock,
                          size: 12,
                          color: sortBy == 'trending' ? Colors.orange : AppColors.primary,
                        ),
                        label: Text(
                          sortBy == 'trending' ? 'Trending' : 'Recent',
                          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          setState(() {
                            sortBy = sortBy == 'recent' ? 'trending' : 'recent';
                            _loadFeed();
                          });
                        },
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: AppColors.primary.withOpacity(0.2)),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(width: 1, height: 20, color: Colors.grey[300]),
                      const SizedBox(width: 12),
                      ...categories.map((cat) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: Text(cat, style: const TextStyle(fontSize: 12)),
                          selected: selectedCategory == cat,
                          onSelected: (val) {
                            if (val) {
                              setState(() {
                                selectedCategory = cat;
                                _loadFeed();
                              });
                            }
                          },
                          backgroundColor: Colors.white,
                          selectedColor: AppColors.primary,
                          labelStyle: TextStyle(
                            color: selectedCategory == cat ? Colors.white : AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: AppColors.primary.withOpacity(0.1)),
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async => _loadFeed(),
              child: FutureBuilder<List<PostModel>>(
                future: _feedFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return ListView.builder(
                      padding: const EdgeInsets.all(AppSpacing.md),
                      itemCount: 3,
                      itemBuilder: (_, __) => Padding(
                        padding: const EdgeInsets.only(bottom: AppSpacing.md),
                        child: ShimmerLoaders.artistCard(),
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(child: Text('No posts found for this selection.'));
                  }

                  final posts = snapshot.data!;
                  return ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return _buildPost(posts[index], context);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPost(PostModel post, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.lg),
      decoration: BoxDecoration(
        color: Colors.white,
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
          // Header
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.pink[50],
                  child: Icon(Icons.person, size: 18, color: Colors.pink[400]),
                ),
                const SizedBox(width: 10),
                Text(post.artistName, style: AppTypography.titleMedium),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.more_horiz),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          // Image
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  color: AppColors.backgroundLight,
                  child: Image.network(
                    post.mediaUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (c, e, s) => const Center(child: Icon(Icons.image, size: 50, color: Colors.grey)),
                  ),
                ),
              ),
              if (post.taggedProducts.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          border: Border.all(color: Colors.white.withOpacity(0.3)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const FaIcon(FontAwesomeIcons.bagShopping, color: Colors.white, size: 14),
                            const SizedBox(width: 8),
                            Text(
                              'Shop Look'.toUpperCase(),
                              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10, letterSpacing: 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ).animate().fadeIn(delay: 400.ms).scale(),
              GestureDetector(
                onTap: () => _showProducts(context, post.taggedProducts),
                child: AbsorbPointer(
                  child: Container(
                    height: 400,
                    width: double.infinity,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ],
          ),
          // Caption
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const FaIcon(FontAwesomeIcons.heart, size: 22, color: AppColors.primary),
                    const SizedBox(width: 20),
                    const FaIcon(FontAwesomeIcons.comment, size: 22),
                    const SizedBox(width: 20),
                    const FaIcon(FontAwesomeIcons.paperPlane, size: 22),
                    const Spacer(),
                    const FaIcon(FontAwesomeIcons.bookmark, size: 22),
                  ],
                ),
                const SizedBox(height: 12),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 14),
                    children: [
                      TextSpan(text: post.artistName, style: const TextStyle(fontWeight: FontWeight.bold)),
                      const TextSpan(text: ' '),
                      TextSpan(text: post.caption),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showProducts(BuildContext context, List<TaggedProduct> products) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (_) => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Shop this Look', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            ...products.map((p) => ListTile(
              leading: Container(width: 50, height: 50, color: Colors.grey[200]),
              title: Text(p.name),
              subtitle: Text('₹${p.price}'),
              trailing: ElevatedButton(
                onPressed: () {
                  // Launch URL
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink, 
                  foregroundColor: Colors.white
                ),
                child: const Text('Buy'),
              ),
            )).toList(),
          ],
        ),
      ),
    );
  }
}
