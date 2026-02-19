import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/travel_models.dart';

part 'travel_state.freezed.dart';

@freezed
class TravelState with _$TravelState {
  const factory TravelState.initial() = _Initial;
  const factory TravelState.loading() = _Loading;
  const factory TravelState.retreatsLoaded(List<RetreatModel> retreats) = _RetreatsLoaded;
  const factory TravelState.profileLoaded(TravelProfile profile) = _ProfileLoaded;
  const factory TravelState.success(String message) = _Success;
  const factory TravelState.error(String message) = _Error;
}
