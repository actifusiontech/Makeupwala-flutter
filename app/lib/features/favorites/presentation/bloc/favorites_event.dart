import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/favorite_model.dart';
part 'favorites_event.freezed.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.loadFavorites() = _LoadFavorites;
  const factory FavoritesEvent.addFavorite(FavoriteModel artist) = _AddFavorite;
  const factory FavoritesEvent.removeFavorite(String artistId) = _RemoveFavorite;
}
