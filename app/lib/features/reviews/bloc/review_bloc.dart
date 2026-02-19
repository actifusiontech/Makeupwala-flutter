import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/review_repository.dart';
import '../domain/review_model.dart';
import 'dart:io';

part 'review_event.dart';
part 'review_state.dart';
part 'review_bloc.freezed.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  final ReviewRepository _repository;

  ReviewBloc({required ReviewRepository repository})
      : _repository = repository,
        super(const ReviewState.initial()) {
    on<ReviewEvent>((event, emit) async {
      await event.when(
        fetchReviews: (artistId) async {
          emit(const ReviewState.loading());
          try {
            final reviews = await _repository.getArtistReviews(artistId);
            emit(ReviewState.loaded(reviews));
          } catch (e) {
            emit(const ReviewState.error('Failed to fetch reviews'));
          }
        },
        submitReview: (review, images) async {
          emit(const ReviewState.submitting());
          try {
            // TODO: Upload images first if any, then get URLs and update review object
            // For now, submitting review object directly (assuming images handled or empty)
            await _repository.submitReview(review);
            emit(const ReviewState.success());
          } catch (e) {
             emit(const ReviewState.error('Failed to submit review'));
          }
        },
      );
    });
  }
}
