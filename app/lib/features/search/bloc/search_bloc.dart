import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import '../data/search_repository.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepository _repository;

  SearchBloc({SearchRepository? repository})
      : _repository = repository ?? SearchRepository(),
        super(const SearchState.initial()) {
    on<SearchEvent>(
      (event, emit) async {
        await event.when(
          search: (query, category) => _onSearch(query, category, emit),
          clear: () async => emit(const SearchState.initial()),
        );
      },
      transformer: (events, mapper) {
        return events
            .debounceTime(const Duration(milliseconds: 500))
            .asyncExpand(mapper);
      },
    );
  }

  Future<void> _onSearch(
    String query,
    String? category,
    Emitter<SearchState> emit,
  ) async {
    if (query.isEmpty && category == null) {
      emit(const SearchState.initial());
      return;
    }

    emit(const SearchState.loading());

    try {
      final results = await _repository.searchArtists(
        query: query,
        category: category,
      );
      
      if (results.isEmpty) {
        emit(const SearchState.empty());
      } else {
        emit(SearchState.loaded(results: results));
      }
    } catch (e) {
      emit(SearchState.error(message: e.toString()));
    }
  }
}
