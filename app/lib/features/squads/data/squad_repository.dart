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

  // Artist Management Methods
  Future<List<dynamic>> getMySquad() async {
    try {
      // final response = await _apiClient.dio.get('/artist/squad');
      // return response.data['members'] as List<dynamic>;
      
      // Mock Data for now as backend might not have this yet
      await Future.delayed(const Duration(milliseconds: 500));
      return [
        {'id': '1', 'name': 'Sarah Jones', 'role': 'Assistant', 'status': 'active', 'avatar': 'https://i.pravatar.cc/150?u=1'},
        {'id': '2', 'name': 'Mike Ross', 'role': 'Hairstylist', 'status': 'pending', 'avatar': 'https://i.pravatar.cc/150?u=2'},
      ];
    } catch (e) {
      return [];
    }
  }

  Future<void> inviteMember(String email) async {
    // await _apiClient.dio.post('/artist/squad/invite', data: {'email': email});
    await Future.delayed(const Duration(seconds: 1));
  }

  Future<void> removeMember(String id) async {
    // await _apiClient.dio.delete('/artist/squad/$id');
    await Future.delayed(const Duration(seconds: 1));
  }
}
