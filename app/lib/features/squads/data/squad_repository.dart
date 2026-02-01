import 'package:dio/dio.dart';
import 'package:app/core/network/api_client.dart';
import 'models/squad_booking.dart';

class SquadRepository {
  final ApiClient _apiClient;

  SquadRepository(this._apiClient);

  Future<SquadBooking> createSquad(Map<String, dynamic> data) async {
    final response = await _apiClient.dio.post('/bookings/squads', data: data);
    return SquadBooking.fromJson(response.data);
  }

  Future<SquadBooking> getSquad(String id) async {
    final response = await _apiClient.dio.get('/bookings/squads/$id');
    return SquadBooking.fromJson(response.data);
  }
}
