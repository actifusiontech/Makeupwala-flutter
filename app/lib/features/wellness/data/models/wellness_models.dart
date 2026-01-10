class WellnessPartner {
  final String id;
  final String name;
  final String type;
  final String location;
  final String country;
  final String description;

  WellnessPartner({
    required this.id,
    required this.name,
    required this.type,
    required this.location,
    required this.country,
    required this.description,
  });

  factory WellnessPartner.fromJson(Map<String, dynamic> json) {
    return WellnessPartner(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      location: json['location'] ?? '',
      country: json['country'] ?? '',
      description: json['description'] ?? '',
    );
  }
}

class WellnessPackage {
  final String id;
  final String name;
  final String description;
  final int durationDays;
  final double price;
  final String currency;

  WellnessPackage({
    required this.id,
    required this.name,
    required this.description,
    required this.durationDays,
    required this.price,
    required this.currency,
  });

  factory WellnessPackage.fromJson(Map<String, dynamic> json) {
    return WellnessPackage(
      id: json['id'],
      name: json['name'],
      description: json['description'] ?? '',
      durationDays: json['duration_days'],
      price: (json['price'] as num).toDouble(),
      currency: json['currency'],
    );
  }
}
