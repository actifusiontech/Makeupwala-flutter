import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/discovery_repository.dart';
import 'discovery_event.dart';
import 'discovery_state.dart';

class DiscoveryBloc extends Bloc<DiscoveryEvent, DiscoveryState> {
  final DiscoveryRepository repository;

  DiscoveryBloc({required this.repository}) : super(const DiscoveryState.initial()) {
    on<DiscoveryEvent>((event, emit) async {
      await event.when(
        fetchFeed: () async {
          emit(const DiscoveryState.loading());
          try {
            final looks = await repository.getRecommendations();
            emit(DiscoveryState.recommendationsLoaded(looks));
          } catch (e) {
            emit(DiscoveryState.error(e.toString()));
          }
        },
        fetchRecommendations: () async {
          emit(const DiscoveryState.loading());
          try {
            final looks = await repository.getRecommendations();
            emit(DiscoveryState.recommendationsLoaded(looks));
          } catch (e) {
            emit(DiscoveryState.error(e.toString()));
          }
        },
        searchLooks: (tags) async {
          emit(const DiscoveryState.loading());
          try {
            final looks = await repository.searchLooks(tags: tags);
            emit(DiscoveryState.recommendationsLoaded(looks));
          } catch (e) {
            emit(DiscoveryState.error(e.toString()));
          }
        },
      );
    });
  }
}

