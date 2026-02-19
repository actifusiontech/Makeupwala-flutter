import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/favorites_repository.dart';
import '../../domain/favorite_model.dart';

import 'favorites_event.dart';
import 'favorites_state.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final FavoritesRepository repository;

  FavoritesBloc({required this.repository}) : super(const FavoritesState.initial()) {
    on<FavoritesEvent>((event, emit) async {
      await event.when(
        loadFavorites: () async {
          emit(const FavoritesState.loading());
          try {
            final favorites = await repository.getFavorites();
            emit(FavoritesState.loaded(favorites));
          } catch (e) {
            emit(FavoritesState.error(e.toString()));
          }
        },
        addFavorite: (artist) async {
          final currentState = state;
          currentState.maybeWhen(
            loaded: (currentFavorites) async {
              final updatedList = [...currentFavorites, artist];
              emit(FavoritesState.loaded(updatedList));
              try {
                await repository.addFavorite(artist);
              } catch (e) {
                emit(FavoritesState.loaded(currentFavorites));
                emit(FavoritesState.error('Failed to add favorite'));
              }
            },
            orElse: () {},
          );
        },
        removeFavorite: (artistId) async {
          final currentState = state;
          currentState.maybeWhen(
            loaded: (currentFavorites) async {
              final updatedList = currentFavorites.where((a) => a.id != artistId).toList();
              emit(FavoritesState.loaded(updatedList));
              try {
                await repository.removeFavorite(artistId);
              } catch (e) {
                emit(FavoritesState.loaded(currentFavorites));
                emit(FavoritesState.error('Failed to remove favorite'));
              }
            },
            orElse: () {},
          );
        },
      );
    });
  }
}

