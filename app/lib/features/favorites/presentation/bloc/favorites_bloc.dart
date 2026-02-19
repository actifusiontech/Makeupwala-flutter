import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/favorites_repository.dart';
import '../../domain/favorite_model.dart';

import 'favorites_event.dart';
import 'favorites_state.dart';

// part 'favorites_bloc.freezed.dart'; // No longer needed if state/event have their own files

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final FavoritesRepository repository;

  FavoritesBloc({required this.repository}) : super(const FavoritesState.initial()) {
    on<_LoadFavorites>(_onLoadFavorites);
    on<_AddFavorite>(_onAddFavorite);
    on<_RemoveFavorite>(_onRemoveFavorite);
  }

  Future<void> _onLoadFavorites(_LoadFavorites event, Emitter<FavoritesState> emit) async {
    emit(const FavoritesState.loading());
    try {
      final favorites = await repository.getFavorites();
      emit(FavoritesState.loaded(favorites));
    } catch (e) {
      emit(FavoritesState.error(e.toString()));
    }
  }

  Future<void> _onAddFavorite(_AddFavorite event, Emitter<FavoritesState> emit) async {
    final currentState = state;
    if (currentState is _Loaded) {
      // Optimistic update
      final updatedList = [...currentState.favorites, event.artist];
      emit(FavoritesState.loaded(updatedList));

      try {
        await repository.addFavorite(event.artist);
      } catch (e) {
        // Revert on failure
        emit(FavoritesState.loaded(currentState.favorites));
        emit(FavoritesState.error('Failed to add favorite'));
      }
    }
  }

  Future<void> _onRemoveFavorite(_RemoveFavorite event, Emitter<FavoritesState> emit) async {
    final currentState = state;
    if (currentState is _Loaded) {
      // Optimistic update
      final updatedList = currentState.favorites.where((artist) => artist.id != event.artistId).toList();
      emit(FavoritesState.loaded(updatedList));

      try {
        await repository.removeFavorite(event.artistId);
      } catch (e) {
         // Revert on failure
        emit(FavoritesState.loaded(currentState.favorites));
        emit(FavoritesState.error('Failed to remove favorite'));
      }
    }
  }
}
