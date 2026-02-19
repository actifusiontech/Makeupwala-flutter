import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/discovery_repository.dart';
import 'discovery_event.dart';
import 'discovery_state.dart';

class DiscoveryBloc extends Bloc<DiscoveryEvent, DiscoveryState> {
  final DiscoveryRepository repository;

  DiscoveryBloc({required this.repository}) : super(const DiscoveryState.initial()) {
    on<_FetchFeed>((event, emit) async {
      emit(const DiscoveryState.loading());
      try {
        // Unifying: Using the feed from the other repo but putting it here for now
        // or just using recommendations for "Shop the Look" preview
        final looks = await repository.getRecommendations();
        emit(DiscoveryState.recommendationsLoaded(looks));
      } catch (e) {
        emit(DiscoveryState.error(e.toString()));
      }
    });

    on<_FetchRecommendations>((event, emit) async {
      emit(const DiscoveryState.loading());
      try {
        final looks = await repository.getRecommendations();
        emit(DiscoveryState.recommendationsLoaded(looks));
      } catch (e) {
        emit(DiscoveryState.error(e.toString()));
      }
    });

    on<_SearchLooks>((event, emit) async {
      emit(const DiscoveryState.loading());
      try {
        final looks = await repository.searchLooks(tags: event.tags);
        emit(DiscoveryState.recommendationsLoaded(looks));
      } catch (e) {
        emit(DiscoveryState.error(e.toString()));
      }
    });
  }
}
