import 'dart:developer' as developer;
import '../../../core/cache/hive_boxes.dart';
import '../../favorites/domain/favorite_model.dart';
import 'package:dio/dio.dart'; // Keep for future API calls if needed, or remove if not used at all

class FavoritesRepository {
  final Dio? _dio; // Optional for now

  FavoritesRepository({Dio? dio}) : _dio = dio;

  // Fetch list of favorite artists from local storage
  Future<List<FavoriteModel>> getFavorites() async {
    try {
      final box = HiveBoxes.getFavoritesBox();
      return box.values.toList();
    } catch (e) {
      developer.log('❌ Failed to fetch favorites: $e', name: 'FavoritesRepository');
      return [];
    }
  }

  // Add an artist to favorites
  Future<void> addFavorite(FavoriteModel artist) async {
    try {
      final box = HiveBoxes.getFavoritesBox();
      await box.put(artist.id, artist);
      developer.log('❤️ Added favorite: ${artist.fullName}', name: 'FavoritesRepository');
      
      // Sync with backend later
      // if (_dio != null) await _dio!.post('/favorites', data: {'artist_id': artist.id});
    } catch (e) {
      developer.log('❌ Failed to add favorite: $e', name: 'FavoritesRepository');
      rethrow;
    }
  }

  // Remove an artist from favorites
  Future<void> removeFavorite(String artistId) async {
    try {
      final box = HiveBoxes.getFavoritesBox();
      await box.delete(artistId);
      developer.log('💔 Removed favorite: $artistId', name: 'FavoritesRepository');

      // Sync with backend later
      // if (_dio != null) await _dio!.delete('/favorites/$artistId');
    } catch (e) {
      developer.log('❌ Failed to remove favorite: $e', name: 'FavoritesRepository');
      rethrow;
    }
  }

  // Check if an artist is favorited
  bool isFavorite(String artistId) {
     final box = HiveBoxes.getFavoritesBox();
     return box.containsKey(artistId);
  }
}
