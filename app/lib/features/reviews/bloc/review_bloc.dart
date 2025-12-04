import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/review_repository.dart';

part 'review_event.dart';
part 'review_state.dart';
part 'review_bloc.freezed.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  final ReviewRepository _repository;

  ReviewBloc({ReviewRepository? repository})
      : _repository = repository ?? ReviewRepository(),
        super(const ReviewState.initial()) {
    on<ReviewEvent>((event, emit) async {
      await event.when(
        submitReview: (bookingId, rating, comment) => _onSubmitReview(bookingId, rating, comment, emit),
        fetchArtistReviews: (artistId) => _onFetchArtistReviews(artistId, emit),
      );
    });
  }

  Future<void> _onSubmitReview(String bookingId, int rating, String comment, Emitter<ReviewState> emit) async {
    emit(const ReviewState.submitting());
    try {
      await _repository.submitReview(bookingId: bookingId, rating: rating, comment: comment);
      emit(const ReviewState.success(message: 'Review submitted successfully!'));
    } catch (e) {
      emit(ReviewState.error(message: e.toString()));
    }
  }

  Future<void> _onFetchArtistReviews(String artistId, Emitter<ReviewState> emit) async {
    emit(const ReviewState.loading());
    try {
      final reviews = await _repository.getArtistReviews(artistId);
      emit(ReviewState.loaded(reviews: reviews));
    } catch (e) {
      emit(ReviewState.error(message: e.toString()));
    }
  }
}
