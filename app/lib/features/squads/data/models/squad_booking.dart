class SquadBooking {
  final String id;
  final String eventName;
  final String eventType;
  final DateTime eventDate;
  final String venueAddress;
  final int totalArtistsNeeded;
  final String status;
  // members and itinerary skipped for brevity in list view, but usually included

  SquadBooking({
    required this.id,
    required this.eventName,
    required this.eventType,
    required this.eventDate,
    required this.venueAddress,
    required this.totalArtistsNeeded,
    required this.status,
  });

  factory SquadBooking.fromJson(Map<String, dynamic> json) {
    return SquadBooking(
      id: json['id'],
      eventName: json['event_name'],
      eventType: json['event_type'],
      eventDate: DateTime.parse(json['event_date']),
      venueAddress: json['venue_address'],
      totalArtistsNeeded: json['total_artists_needed'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'event_name': eventName,
      'event_type': eventType,
      'event_date': eventDate.toIso8601String(),
      'venue_address': venueAddress,
      'total_artists_needed': totalArtistsNeeded,
    };
  }
}
