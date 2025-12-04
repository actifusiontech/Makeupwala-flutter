part of 'complaint_bloc.dart';

@freezed
abstract class ComplaintEvent with _$ComplaintEvent {
  const factory ComplaintEvent.raiseComplaint({
    required String bookingId,
    required String subject,
    required String description,
  }) = _RaiseComplaint;

  const factory ComplaintEvent.fetchMyComplaints() = _FetchMyComplaints;
  const factory ComplaintEvent.fetchAllComplaints() = _FetchAllComplaints;
}
