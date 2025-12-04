part of 'complaint_bloc.dart';

@freezed
abstract class ComplaintState with _$ComplaintState {
  const factory ComplaintState.initial() = _Initial;
  const factory ComplaintState.loading() = _Loading;
  const factory ComplaintState.submitting() = _Submitting;
  const factory ComplaintState.loaded({required List<dynamic> complaints}) = _Loaded;
  const factory ComplaintState.success({required String message}) = _Success;
  const factory ComplaintState.error({required String message}) = _Error;
}
