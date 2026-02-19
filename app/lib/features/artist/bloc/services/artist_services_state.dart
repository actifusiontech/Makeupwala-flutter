import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_services_state.freezed.dart';

@freezed
class ArtistServicesState with _$ArtistServicesState {
  const factory ArtistServicesState.initial() = _Initial;
  const factory ArtistServicesState.loading() = _Loading;
  const factory ArtistServicesState.loaded(List<Map<String, dynamic>> services) = _Loaded;
  const factory ArtistServicesState.actionSuccess(String message) = _ActionSuccess;
  const factory ArtistServicesState.error(String message) = _Error;
}
