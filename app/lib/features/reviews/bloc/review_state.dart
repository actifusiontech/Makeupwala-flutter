part of 'review_bloc.dart';

@freezed
abstract class ReviewState with _$ReviewState {
  const factory ReviewState.initial() = _Initial;
  const factory ReviewState.loading() = _Loading;
  const factory ReviewState.submitting() = _Submitting;
  const factory ReviewState.loaded({required List<dynamic> reviews}) = _Loaded;
  const factory ReviewState.success({required String message}) = _Success;
  const factory ReviewState.error({required String message}) = _Error;
}
