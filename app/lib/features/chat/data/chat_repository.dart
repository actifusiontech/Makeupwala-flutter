import 'dart:developer' as developer;
import '../../../core/network/api_client.dart';

class ChatRepository {
  final ApiClient _apiClient;

  ChatRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<Map<String, dynamic>> createRoom(String artistId) async {
    try {
      developer.log('💬 Creating chat room with artist: $artistId', name: 'ChatRepository');
      final response = await _apiClient.dio.post(
        '/chat/rooms',
        data: {'artist_id': artistId},
      );
      return response.data;
    } catch (e) {
      developer.log('❌ Create room failed: $e', name: 'ChatRepository');
      rethrow;
    }
  }

  Future<List<dynamic>> getMyRooms() async {
    try {
      developer.log('💬 Fetching my chat rooms', name: 'ChatRepository');
      final response = await _apiClient.dio.get('/chat/rooms');
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('❌ Fetch rooms failed: $e', name: 'ChatRepository');
      rethrow;
    }
  }

  Future<List<dynamic>> getMessages(String roomId) async {
    try {
      // developer.log('💬 Fetching messages for room: $roomId', name: 'ChatRepository');
      final response = await _apiClient.dio.get('/chat/rooms/$roomId/messages');
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('❌ Fetch messages failed: $e', name: 'ChatRepository');
      rethrow;
    }
  }

  Future<Map<String, dynamic>> sendMessage(String roomId, String text) async {
    try {
      developer.log('💬 Sending message to room: $roomId', name: 'ChatRepository');
      final response = await _apiClient.dio.post(
        '/chat/rooms/$roomId/messages',
        data: {'text': text},
      );
      return response.data;
    } catch (e) {
      developer.log('❌ Send message failed: $e', name: 'ChatRepository');
      rethrow;
    }
  }
}
