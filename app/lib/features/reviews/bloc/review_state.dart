part of 'review_bloc.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState.initial() = _Initial;
  const factory ReviewState.loading() = _Loading;
  const factory ReviewState.loaded(List<ReviewModel> reviews) = _Loaded;
  const factory ReviewState.submitting() = _Submitting;
  const factory ReviewState.success() = _Success;
  const factory ReviewState.error(String message) = _Error;
}
