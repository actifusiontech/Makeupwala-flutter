import 'package:dio/dio.dart';
import '../domain/travel_models.dart';

class TravelRepository {
  final Dio _dio;

  TravelRepository(this._dio);

  /// Create travel profile for the authenticated artist
  Future<TravelProfile> createTravelProfile(
      CreateTravelProfileRequest request) async {
    try {
      final response = await _dio.post(
        '/artist/travel-profile',
        data: request.toJson(),
      );
      return TravelProfile.fromJson(response.data);
    } catch (e) {
      throw _handleError(e);
    }
  }

  /// Get own travel profile
  Future<TravelProfile> getTravelProfile() async {
    try {
      final response = await _dio.get('/artist/travel-profile');
      return TravelProfile.fromJson(response.data);
    } catch (e) {
      throw _handleError(e);
    }
  }

  /// Update travel profile
  Future<TravelProfile> updateTravelProfile(
      CreateTravelProfileRequest request) async {
    try {
      final response = await _dio.put(
        '/artist/travel-profile',
        data: request.toJson(),
      );
      return TravelProfile.fromJson(response.data);
    } catch (e) {
      throw _handleError(e);
    }
  }

  /// Get artist's travel profile (public)
  Future<TravelProfile> getArtistTravelProfile(String artistId) async {
    try {
      final response = await _dio.get('/artist/$artistId/travel-profile');
      return TravelProfile.fromJson(response.data);
    } catch (e) {
      throw _handleError(e);
    }
  }

  /// List all traveling artists
  Future<List<TravelProfile>> listTravelingArtists({String? country}) async {
    try {
      final response = await _dio.get(
        '/travel/artists',
        queryParameters: country != null ? {'country': country} : null,
      );
      return (response.data as List)
          .map((json) => TravelProfile.fromJson(json))
          .toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  /// Get list of active retreats
  Future<List<RetreatModel>> getRetreats() async {
    try {
      final response = await _dio.get('/travel/retreats/packages');
      return (response.data as List)
          .map((json) => RetreatModel.fromJson(json))
          .toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  /// Book a retreat
  Future<void> bookRetreat({
    required String packageId,
    required String participantName,
  }) async {
    try {
      await _dio.post(
        '/travel/retreats/bookings',
        data: {
          'retreat_package_id': packageId,
          'participant_name': participantName,
        },
      );
    } catch (e) {
      throw _handleError(e);
    }
  }

  /// Upload visa document
  Future<String> uploadVisaDocument(String filePath, String country) async {
    try {
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(filePath),
        'country': country,
      });
      final response = await _dio.post('/artist/travel/visa-docs', data: formData);
      return response.data['url'];
    } catch (e) {
      throw _handleError(e);
    }
  }

  Exception _handleError(dynamic error) {
    if (error is DioException) {
      final statusCode = error.response?.statusCode;
      final errorMessage = error.response?.data?['error'] ?? error.message;

      if (statusCode == 404) {
        // If it's the specific profile endpoint, use that message
        if (error.requestOptions.path.contains('travel-profile')) {
          return Exception('Travel profile not found');
        }
        return Exception('Endpoint not found: ${error.requestOptions.path}');
      } else if (statusCode == 400) {
        return Exception(errorMessage ?? 'Invalid request');
      } else if (statusCode == 401) {
        return Exception('Unauthorized');
      } else if (statusCode == 500) {
        return Exception('Internal Server Error: $errorMessage');
      }
      return Exception(errorMessage ?? 'Failed to process request');
    }
    return Exception('Network error: $error');
  }
}
