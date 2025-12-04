part of 'review_bloc.dart';

@freezed
abstract class ReviewEvent with _$ReviewEvent {
  const factory ReviewEvent.submitReview({
    required String bookingId,
    required int rating,
    required String comment,
  }) = _SubmitReview;

  const factory ReviewEvent.fetchArtistReviews({required String artistId}) = _FetchArtistReviews;
}
