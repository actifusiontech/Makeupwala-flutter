part of 'review_bloc.dart';

@freezed
class ReviewEvent with _$ReviewEvent {
  const factory ReviewEvent.fetchReviews(String artistId) = _FetchReviews;
  const factory ReviewEvent.submitReview(ReviewModel review, List<File> images) = _SubmitReview;
}
