import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/studio_model.dart';

part 'studio_seat_manager_state.freezed.dart';

@freezed
class StudioSeatManagerState with _$StudioSeatManagerState {
  const factory StudioSeatManagerState.initial() = _Initial;
  const factory StudioSeatManagerState.loading() = _Loading;
  const factory StudioSeatManagerState.loaded(List<StudioSeat> seats) = _Loaded;
  const factory StudioSeatManagerState.actionSuccess(String message) = _ActionSuccess;
  const factory StudioSeatManagerState.error(String message) = _Error;
}
