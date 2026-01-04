class RetreatModel {
  final String id;
  final String title;
  final String description;
  final String location;
  final DateTime startDate;
  final DateTime endDate;
  final double price;
  final String imageUrl;
  final List<String> inclusions;

  RetreatModel({
    required this.id,
    required this.title,
    required this.description,
    required this.location,
    required this.startDate,
    required this.endDate,
    required this.price,
    required this.imageUrl,
    this.inclusions = const [],
  });

  factory RetreatModel.fromJson(Map<String, dynamic> json) {
    return RetreatModel(
      id: json['id'] ?? '',
      title: json['title'] ?? 'Untitled Retreat',
      description: json['description'] ?? '',
      location: json['location'] ?? '',
      startDate: DateTime.tryParse(json['start_date'] ?? '') ?? DateTime.now(),
      endDate: DateTime.tryParse(json['end_date'] ?? '') ?? DateTime.now(),
      price: double.tryParse(json['price'].toString()) ?? 0.0,
      imageUrl: json['image_url'] ?? '',
      inclusions: json['inclusions'] != null ? List<String>.from(json['inclusions']) : [],
    );
  }
}
