import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/favorite_model.dart';

part 'favorites_state.freezed.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = _Initial;
  const factory FavoritesState.loading() = _Loading;
  const factory FavoritesState.loaded(List<FavoriteModel> favorites) = _Loaded;
  const factory FavoritesState.error(String message) = _Error;
}
