import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/earnings_model.dart';
import '../data/earnings_repository.dart';

part 'earnings_event.dart';
part 'earnings_state.dart';
part 'earnings_bloc.freezed.dart';

class EarningsBloc extends Bloc<EarningsEvent, EarningsState> {
  final EarningsRepository repository;

  EarningsBloc({required this.repository}) : super(const EarningsState.initial()) {
    on<FetchEarningsStats>(_onFetchEarningsStats);
    on<FetchEarnings>(_onFetchEarnings);
    on<FetchPayouts>(_onFetchPayouts);
  }

  Future<void> _onFetchEarningsStats(
    FetchEarningsStats event,
    Emitter<EarningsState> emit,
  ) async {
    emit(const EarningsState.loading());
    try {
      final stats = await repository.getEarningsStats();
      emit(EarningsState.statsLoaded(stats));
    } catch (e) {
      emit(EarningsState.error(e.toString()));
    }
  }

  Future<void> _onFetchEarnings(
    FetchEarnings event,
    Emitter<EarningsState> emit,
  ) async {
    emit(const EarningsState.loading());
    try {
      final earnings = await repository.getEarnings(
        period: event.period,
        status: event.status,
      );
      emit(EarningsState.earningsLoaded(earnings));
    } catch (e) {
      emit(EarningsState.error(e.toString()));
    }
  }

  Future<void> _onFetchPayouts(
    FetchPayouts event,
    Emitter<EarningsState> emit,
  ) async {
    emit(const EarningsState.loading());
    try {
      final payouts = await repository.getPayouts();
      emit(EarningsState.payoutsLoaded(payouts));
    } catch (e) {
      emit(EarningsState.error(e.toString()));
    }
  }
}
