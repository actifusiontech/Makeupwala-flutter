class StudioModel {
  final String id;
  final String name;
  final String address;
  final String city;
  final double hourlyRate;
  final List<String> images;
  final List<String> amenities;
  final double rating;
  final bool isActive;

  StudioModel({
    required this.id,
    required this.name,
    required this.address,
    required this.city,
    required this.hourlyRate,
    this.images = const [],
    this.amenities = const [],
    this.rating = 0.0,
    this.isActive = true,
  });

  factory StudioModel.fromJson(Map<String, dynamic> json) {
    return StudioModel(
      id: json['id'] ?? '',
      name: json['name'] ?? 'Unknown Studio',
      address: json['address'] ?? '',
      city: json['city'] ?? '',
      hourlyRate: (json['hourly_rate'] ?? 0).toDouble(),
      images: json['images'] != null ? List<String>.from(json['images']) : [],
      amenities: json['amenities'] != null ? List<String>.from(json['amenities']) : [],
      rating: (json['rating'] ?? 0.0).toDouble(),
      isActive: json['is_active'] ?? true,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'city': city,
      'hourly_rate': hourlyRate,
      'images': images,
      'amenities': amenities,
      'rating': rating,
      'is_active': isActive,
    };
  }
}
