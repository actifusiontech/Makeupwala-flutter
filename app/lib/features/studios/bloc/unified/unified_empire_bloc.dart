import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/studio_repository.dart';
import '../../../education/data/education_repository.dart';

part 'unified_empire_event.dart';
part 'unified_empire_state.dart';
part 'unified_empire_bloc.freezed.dart';

class UnifiedEmpireBloc extends Bloc<UnifiedEmpireEvent, UnifiedEmpireState> {
  final StudioRepository studioRepository;
  final EducationRepository educationRepository;

  UnifiedEmpireBloc({
    required this.studioRepository,
    required this.educationRepository,
  }) : super(const UnifiedEmpireState.initial()) {
    on<UnifiedEmpireEvent>((event, emit) async {
      await event.map(
        fetchStats: (e) async {
          emit(const UnifiedEmpireState.loading());
          try {
            final studioStats = await studioRepository.getStudioStats(e.studioId);
            final academyStats = await educationRepository.getInstituteStats(e.instituteId);
            
            emit(UnifiedEmpireState.loaded(
              studioStats: studioStats,
              academyStats: academyStats,
            ));
          } catch (error) {
            emit(UnifiedEmpireState.error(error.toString()));
          }
        },
      );
    });
  }
}
