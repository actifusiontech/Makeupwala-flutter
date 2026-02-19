import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/post_model.dart';

part 'discovery_state.freezed.dart';

@freezed
class DiscoveryState with _$DiscoveryState {
  const factory DiscoveryState.initial() = _Initial;
  const factory DiscoveryState.loading() = _Loading;
  const factory DiscoveryState.feedLoaded(List<PostModel> posts) = _FeedLoaded;
  const factory DiscoveryState.recommendationsLoaded(List<Map<String, dynamic>> looks) = _RecommendationsLoaded;
  const factory DiscoveryState.error(String message) = _Error;
}
