class TaggedProduct {
  final String id;
  final String name;
  final double price;
  final String affLink;

  TaggedProduct({required this.id, required this.name, required this.price, required this.affLink});

  factory TaggedProduct.fromJson(Map<String, dynamic> json) {
    return TaggedProduct(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      price: double.tryParse(json['price'].toString()) ?? 0.0,
      affLink: json['affiliate_link'] ?? '',
    );
  }
}

class PostModel {
  final String id;
  final String artistId;
  final String artistName;
  final String mediaUrl;
  final String mediaType; // IMAGE or VIDEO
  final String caption;
  final List<TaggedProduct> taggedProducts;

  PostModel({
    required this.id,
    required this.artistId,
    required this.artistName,
    required this.mediaUrl,
    required this.mediaType,
    required this.caption,
    this.taggedProducts = const [],
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'] ?? '',
      artistId: json['artist_id'] ?? '',
      artistName: json['artist_name'] ?? 'Artist', // May need join or separate fetch
      mediaUrl: json['media_url'] ?? '',
      mediaType: json['media_type'] ?? 'IMAGE',
      caption: json['caption'] ?? '',
      taggedProducts: (json['tagged_products'] as List<dynamic>?)
              ?.map((e) => TaggedProduct.fromJson(e))
              .toList() ??
          [],
    );
  }
}
