import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/post_model.dart';

part 'discovery_event.freezed.dart';

@freezed
class DiscoveryEvent with _$DiscoveryEvent {
  const factory DiscoveryEvent.fetchFeed() = _FetchFeed;
  const factory DiscoveryEvent.fetchRecommendations() = _FetchRecommendations;
  const factory DiscoveryEvent.searchLooks(List<String> tags) = _SearchLooks;
}
