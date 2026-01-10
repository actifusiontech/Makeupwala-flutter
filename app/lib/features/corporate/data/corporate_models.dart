class CorporateClient {
  final String? id;
  final String companyName;
  final String contactPerson;
  final String email;
  final String phone;

  CorporateClient({
    this.id,
    required this.companyName,
    required this.contactPerson,
    required this.email,
    required this.phone,
  });

  Map<String, dynamic> toJson() {
    return {
      'company_name': companyName,
      'contact_person': contactPerson,
      'email': email,
      'phone': phone,
    };
  }
}

class BulkBooking {
  final String? id;
  final String corporateId;
  final String eventType;
  final DateTime eventDate;
  final String location;
  final int paxCount;

  BulkBooking({
    this.id,
    required this.corporateId,
    required this.eventType,
    required this.eventDate,
    required this.location,
    required this.paxCount,
  });

  Map<String, dynamic> toJson() {
    return {
      'corporate_id': corporateId,
      'event_type': eventType,
      'event_date': eventDate.toIso8601String(),
      'location': location,
      'pax_count': paxCount,
    };
  }
}
