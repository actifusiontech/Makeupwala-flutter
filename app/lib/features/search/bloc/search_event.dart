part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.search({
    required String query,
    String? category,
  }) = _Search;
  
  const factory SearchEvent.clear() = _Clear;
}
