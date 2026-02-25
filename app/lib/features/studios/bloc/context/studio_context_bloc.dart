import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/features/studios/data/studio_repository.dart';
import 'package:app/features/studios/data/models/studio_model.dart';

// --- EVENTS ---
abstract class StudioContextEvent {
  const StudioContextEvent();
}

class LoadMyStudios extends StudioContextEvent {}

class SwitchStudio extends StudioContextEvent {
  final StudioModel studio;
  const SwitchStudio(this.studio);
}

// --- STATE ---
class StudioContextState {
  final List<StudioModel> studios;
  final StudioModel? activeStudio;
  final bool isLoading;
  final String? error;

  StudioContextState({
    this.studios = const [],
    this.activeStudio,
    this.isLoading = false,
    this.error,
  });

  StudioContextState copyWith({
    List<StudioModel>? studios,
    StudioModel? activeStudio,
    bool? isLoading,
    String? error,
  }) {
    return StudioContextState(
      studios: studios ?? this.studios,
      activeStudio: activeStudio ?? this.activeStudio,
      isLoading: isLoading ?? this.isLoading,
      error: error, // Can be null to clear
    );
  }
}

// --- BLOC ---
class StudioContextBloc extends Bloc<StudioContextEvent, StudioContextState> {
  final StudioRepository _repository;

  StudioContextBloc({required StudioRepository repository})
      : _repository = repository,
        super(StudioContextState()) {
    on<LoadMyStudios>(_onLoadMyStudios);
    on<SwitchStudio>(_onSwitchStudio);
  }

  Future<void> _onLoadMyStudios(LoadMyStudios event, Emitter<StudioContextState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final studios = await _repository.getMyStudios();
      if (studios.isNotEmpty) {
        emit(state.copyWith(
          studios: studios,
          activeStudio: state.activeStudio ?? studios.first,
          isLoading: false,
        ));
      } else {
        emit(state.copyWith(studios: [], isLoading: false));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  void _onSwitchStudio(SwitchStudio event, Emitter<StudioContextState> emit) {
    emit(state.copyWith(activeStudio: event.studio));
  }
}
