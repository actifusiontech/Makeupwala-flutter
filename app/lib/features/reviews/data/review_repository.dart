import 'dart:developer' as developer;
import 'package:dio/dio.dart';
import 'package:app/core/network/api_client.dart';
import '../domain/review_model.dart';

class ReviewRepository {
  final ApiClient _apiClient;

  ReviewRepository(this._apiClient);

  Future<List<ReviewModel>> getArtistReviews(String artistId) async {
    try {
      final response = await _apiClient.dio.get('/artists/$artistId/reviews');
      // Handling both direct list and envoloped 'data' scenarios for robustness
      final data = response.data is Map && response.data.containsKey('data') 
          ? response.data['data'] 
          : response.data;
          
      return (data as List)
          .map((e) => ReviewModel.fromJson(e))
          .toList();
    } catch (e) {
      developer.log('❌ Failed to fetch reviews: $e', name: 'ReviewRepository');
      // Return empty list on error for now to prevent UI crash, or rethrow handled by Bloc
      return []; 
    }
  }

  Future<void> submitReview(ReviewModel review) async {
    try {
      await _apiClient.dio.post('/reviews', data: review.toJson());
    } catch (e) {
      developer.log('❌ Failed to submit review: $e', name: 'ReviewRepository');
      throw Exception('Failed to submit review');
    }
  }
}
