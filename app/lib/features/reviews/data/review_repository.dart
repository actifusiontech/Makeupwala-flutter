import 'dart:developer' as developer;
import '../../../core/network/api_client.dart';

class ReviewRepository {
  final ApiClient _apiClient;

  ReviewRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<void> submitReview({
    required String bookingId,
    required int rating,
    required String comment,
  }) async {
    try {
      developer.log('⭐ Submitting review for booking: $bookingId', name: 'ReviewRepository');
      await _apiClient.dio.post(
        '/customers/me/bookings/action/$bookingId/review',
        data: {
          'rating': rating,
          'comment': comment,
        },
      );
    } catch (e) {
      developer.log('❌ Submit review failed: $e', name: 'ReviewRepository');
      rethrow;
    }
  }

  Future<List<dynamic>> getArtistReviews(String artistId) async {
    try {
      developer.log('⭐ Fetching reviews for artist: $artistId', name: 'ReviewRepository');
      final response = await _apiClient.dio.get('/artists/action/$artistId/reviews');
      return response.data['reviews'] as List<dynamic>;
    } catch (e) {
      developer.log('❌ Fetch reviews failed: $e', name: 'ReviewRepository');
      rethrow;
    }
  }
}
