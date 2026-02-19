import 'package:freezed_annotation/freezed_annotation.dart';

part 'moodboard_event.freezed.dart';

@freezed
class MoodboardEvent with _$MoodboardEvent {
  const factory MoodboardEvent.loadMoodboard(String userId) = _LoadMoodboard;
  const factory MoodboardEvent.addToMoodboard(String userId, String imageUrl, {String? caption}) = _AddToMoodboard;
  const factory MoodboardEvent.removeFromMoodboard(String userId, String itemId) = _RemoveFromMoodboard;
}
