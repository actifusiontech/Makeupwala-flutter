import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/studio_repository.dart';

part 'revenue_analytics_event.dart';
part 'revenue_analytics_state.dart';
part 'revenue_analytics_bloc.freezed.dart';

class RevenueAnalyticsBloc extends Bloc<RevenueAnalyticsEvent, RevenueAnalyticsState> {
  final StudioRepository repository;

  RevenueAnalyticsBloc({required this.repository}) : super(const RevenueAnalyticsState.initial()) {
    on<RevenueAnalyticsEvent>((event, emit) async {
      await event.map(
        fetchAnalytics: (e) async {
          emit(const RevenueAnalyticsState.loading());
          try {
            final report = await repository.getRevenueAnalytics(e.studioId, timeframe: e.timeframe ?? 'monthly');
            emit(RevenueAnalyticsState.loaded(report));
          } catch (error) {
            emit(RevenueAnalyticsState.error(error.toString()));
          }
        },
      );
    });
  }
}
