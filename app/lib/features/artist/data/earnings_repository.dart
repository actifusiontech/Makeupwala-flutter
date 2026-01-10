import 'package:dio/dio.dart';
import 'earnings_model.dart';

class EarningsRepository {
  final Dio _dio;

  EarningsRepository(this._dio);

  Future<EarningsStats> getEarningsStats() async {
    try {
      final response = await _dio.get('/artists/me/earnings/stats');
      return EarningsStats.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch earnings stats: $e');
    }
  }

  Future<List<Earning>> getEarnings({
    String? period, // all, week, month, year
    String? status, // pending, paid
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (period != null) queryParams['period'] = period;
      if (status != null) queryParams['status'] = status;

      final response = await _dio.get(
        '/artists/me/earnings',
        queryParameters: queryParams,
      );
      
      final earnings = (response.data['earnings'] as List)
          .map((e) => Earning.fromJson(e))
          .toList();
      
      return earnings;
    } catch (e) {
      throw Exception('Failed to fetch earnings: $e');
    }
  }

  Future<List<Payout>> getPayouts() async {
    try {
      final response = await _dio.get('/artists/me/payouts');
      return (response.data as List)
          .map((e) => Payout.fromJson(e))
          .toList();
    } catch (e) {
      throw Exception('Failed to fetch payouts: $e');
    }
  }
}
