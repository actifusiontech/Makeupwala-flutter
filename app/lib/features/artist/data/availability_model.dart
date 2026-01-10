class Availability {
  final String id;
  final String artistId;
  final DateTime date;
  final String startTime;
  final String endTime;
  final bool isAvailable;
  final bool isRecurring;
  final String? recurrencePattern;
  final DateTime? recurrenceEndDate;
  final String? notes;
  final DateTime createdAt;
  final DateTime updatedAt;

  Availability({
    required this.id,
    required this.artistId,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.isAvailable,
    required this.isRecurring,
    this.recurrencePattern,
    this.recurrenceEndDate,
    this.notes,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Availability.fromJson(Map<String, dynamic> json) {
    return Availability(
      id: json['id'] as String,
      artistId: json['artistId'] as String,
      date: DateTime.parse(json['date'] as String),
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      isAvailable: json['isAvailable'] as bool? ?? true,
      isRecurring: json['isRecurring'] as bool? ?? false,
      recurrencePattern: json['recurrencePattern'] as String?,
      recurrenceEndDate: json['recurrenceEndDate'] != null
          ? DateTime.parse(json['recurrenceEndDate'] as String)
          : null,
      notes: json['notes'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'artistId': artistId,
      'date': date.toIso8601String().split('T')[0],
      'startTime': startTime,
      'endTime': endTime,
      'isAvailable': isAvailable,
      'isRecurring': isRecurring,
      'recurrencePattern': recurrencePattern,
      'recurrenceEndDate': recurrenceEndDate?.toIso8601String().split('T')[0],
      'notes': notes,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}

class AvailabilityRequest {
  final String date;
  final String startTime;
  final String endTime;
  final bool isAvailable;
  final bool isRecurring;
  final String? recurrencePattern;
  final String? recurrenceEndDate;
  final String? notes;

  AvailabilityRequest({
    required this.date,
    required this.startTime,
    required this.endTime,
    this.isAvailable = true,
    this.isRecurring = false,
    this.recurrencePattern,
    this.recurrenceEndDate,
    this.notes,
  });

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'startTime': startTime,
      'endTime': endTime,
      'isAvailable': isAvailable,
      'isRecurring': isRecurring,
      if (recurrencePattern != null) 'recurrencePattern': recurrencePattern,
      if (recurrenceEndDate != null) 'recurrenceEndDate': recurrenceEndDate,
      if (notes != null) 'notes': notes,
    };
  }
}
