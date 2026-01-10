class EarningsStats {
  final double totalEarnings;
  final double pendingEarnings;
  final double paidEarnings;
  final int totalBookings;
  final double thisMonth;
  final double lastMonth;

  EarningsStats({
    required this.totalEarnings,
    required this.pendingEarnings,
    required this.paidEarnings,
    required this.totalBookings,
    required this.thisMonth,
    required this.lastMonth,
  });

  factory EarningsStats.fromJson(Map<String, dynamic> json) {
    return EarningsStats(
      totalEarnings: (json['totalEarnings'] as num?)?.toDouble() ?? 0.0,
      pendingEarnings: (json['pendingEarnings'] as num?)?.toDouble() ?? 0.0,
      paidEarnings: (json['paidEarnings'] as num?)?.toDouble() ?? 0.0,
      totalBookings: (json['totalBookings'] as int?) ?? 0,
      thisMonth: (json['thisMonth'] as num?)?.toDouble() ?? 0.0,
      lastMonth: (json['lastMonth'] as num?)?.toDouble() ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'totalEarnings': totalEarnings,
      'pendingEarnings': pendingEarnings,
      'paidEarnings': paidEarnings,
      'totalBookings': totalBookings,
      'thisMonth': thisMonth,
      'lastMonth': lastMonth,
    };
  }
}

class Earning {
  final String id;
  final String artistId;
  final String bookingId;
  final double amount;
  final double serviceCharge;
  final double netAmount;
  final String status;
  final String? payoutId;
  final DateTime createdAt;
  final DateTime updatedAt;

  Earning({
    required this.id,
    required this.artistId,
    required this.bookingId,
    required this.amount,
    required this.serviceCharge,
    required this.netAmount,
    required this.status,
    this.payoutId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Earning.fromJson(Map<String, dynamic> json) {
    return Earning(
      id: json['id'] as String,
      artistId: json['artistId'] as String,
      bookingId: json['bookingId'] as String,
      amount: (json['amount'] as num).toDouble(),
      serviceCharge: (json['serviceCharge'] as num?)?.toDouble() ?? 0.0,
      netAmount: (json['netAmount'] as num).toDouble(),
      status: json['status'] as String,
      payoutId: json['payoutId'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }
}

class Payout {
  final String id;
  final String artistId;
  final double amount;
  final String status;
  final String? paymentMethod;
  final String? transactionId;
  final DateTime initiatedAt;
  final DateTime? completedAt;
  final DateTime createdAt;

  Payout({
    required this.id,
    required this.artistId,
    required this.amount,
    required this.status,
    this.paymentMethod,
    this.transactionId,
    required this.initiatedAt,
    this.completedAt,
    required this.createdAt,
  });

  factory Payout.fromJson(Map<String, dynamic> json) {
    return Payout(
      id: json['id'] as String,
      artistId: json['artistId'] as String,
      amount: (json['amount'] as num).toDouble(),
      status: json['status'] as String,
      paymentMethod: json['paymentMethod'] as String?,
      transactionId: json['transactionId'] as String?,
      initiatedAt: DateTime.parse(json['initiatedAt'] as String),
      completedAt: json['completedAt'] != null 
          ? DateTime.parse(json['completedAt'] as String) 
          : null,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }
}
