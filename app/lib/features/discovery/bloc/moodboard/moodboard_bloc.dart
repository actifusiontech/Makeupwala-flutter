import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/moodboard_repository.dart';
import 'moodboard_event.dart';
import 'moodboard_state.dart';

class MoodboardBloc extends Bloc<MoodboardEvent, MoodboardState> {
  final MoodboardRepository repository;
  String? _currentUserId;

  MoodboardBloc({required this.repository}) : super(const MoodboardState.initial()) {
    on<MoodboardEvent>((event, emit) async {
      await event.when(
        loadMoodboard: (userId) async {
          _currentUserId = userId;
          emit(const MoodboardState.loading());
          try {
            final items = await repository.getMoodboard(userId);
            emit(MoodboardState.loaded(items));
          } catch (e) {
            emit(MoodboardState.error(e.toString()));
          }
        },
        addToMoodboard: (userId, imageUrl, caption) async {
          // We don't emit loading here to avoid full screen loader on heart tap
          try {
            await repository.addToMoodboard(userId, imageUrl, caption: caption);
            emit(const MoodboardState.actionSuccess('Added to Moodboard!'));
            // Optionally reload if we are on the same screen, but usually not needed for add
             if (_currentUserId != null) {
              // Reload to update list if it was visible
              final items = await repository.getMoodboard(_currentUserId!);
              emit(MoodboardState.loaded(items));
            }
          } catch (e) {
            emit(MoodboardState.error(e.toString()));
          }
        },
        removeFromMoodboard: (userId, itemId) async {
          emit(const MoodboardState.loading());
          try {
            await repository.removeFromMoodboard(userId, itemId);
            emit(const MoodboardState.actionSuccess('Removed from Moodboard!'));
            if (_currentUserId != null) {
              add(MoodboardEvent.loadMoodboard(_currentUserId!));
            }
          } catch (e) {
            emit(MoodboardState.error(e.toString()));
          }
        },
      );
    });
  }
}
