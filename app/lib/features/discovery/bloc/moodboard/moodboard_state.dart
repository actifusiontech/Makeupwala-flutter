import 'package:freezed_annotation/freezed_annotation.dart';

part 'moodboard_state.freezed.dart';

@freezed
class MoodboardState with _$MoodboardState {
  const factory MoodboardState.initial() = _Initial;
  const factory MoodboardState.loading() = _Loading;
  const factory MoodboardState.loaded(List<Map<String, dynamic>> items) = _Loaded;
  const factory MoodboardState.actionSuccess(String message) = _ActionSuccess;
  const factory MoodboardState.error(String message) = _Error;
}
