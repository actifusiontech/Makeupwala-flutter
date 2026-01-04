import 'package:flutter/material.dart';
import '../../data/models/post_model.dart';
import '../../data/repositories/discovery_repository.dart';

class SocialFeedScreen extends StatefulWidget {
  const SocialFeedScreen({Key? key}) : super(key: key);

  @override
  State<SocialFeedScreen> createState() => _SocialFeedScreenState();
}

class _SocialFeedScreenState extends State<SocialFeedScreen> {
  late Future<List<PostModel>> _feedFuture;
  final DiscoveryRepository _repository = DiscoveryRepository();

  @override
  void initState() {
    super.initState();
    _feedFuture = _repository.getFeed();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop the Look'),
        backgroundColor: Colors.pink[400],
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder<List<PostModel>>(
        future: _feedFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator(color: Colors.pink));
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No posts yet.'));
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
    );
  }

  Widget _buildPost(PostModel post, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 16,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, size: 16, color: Colors.white),
              ),
              const SizedBox(width: 8),
              Text(post.artistName, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        // Image
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.grey[200],
              child: Image.network(
                post.mediaUrl,
                fit: BoxFit.cover,
                errorBuilder: (c, e, s) => const Center(child: Icon(Icons.image, size: 50, color: Colors.grey)),
              ),
            ),
            if (post.taggedProducts.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: FloatingActionButton.small(
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.shopping_bag, color: Colors.pink),
                  onPressed: () => _showProducts(context, post.taggedProducts),
                ),
              ),
          ],
        ),
        // Caption
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(post.caption),
        ),
        const Divider(),
      ],
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
