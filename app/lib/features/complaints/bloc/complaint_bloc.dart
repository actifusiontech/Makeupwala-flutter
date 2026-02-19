import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/complaint_repository.dart';
import '../domain/complaint_model.dart';
import 'dart:developer' as developer;

part 'complaint_event.dart';
part 'complaint_state.dart';
part 'complaint_bloc.freezed.dart';

class ComplaintBloc extends Bloc<ComplaintEvent, ComplaintState> {
  final ComplaintRepository _repository;

  ComplaintBloc({ComplaintRepository? repository})
      : _repository = repository ?? ComplaintRepository(),
        super(const ComplaintState.initial()) {
    on<ComplaintEvent>((event, emit) async {
      await event.when(
        raiseComplaint: (bookingId, subject, description) => _onRaiseComplaint(bookingId, subject, description, emit),
        fetchMyComplaints: () => _onFetchMyComplaints(emit),
        fetchAllComplaints: () => _onFetchAllComplaints(emit),
        resolveComplaint: (id, comment) => _onResolveComplaint(id, comment, emit),
      );
    });
  }

  Future<void> _onRaiseComplaint(String bookingId, String subject, String description, Emitter<ComplaintState> emit) async {
    emit(const ComplaintState.submitting());
    try {
      await _repository.raiseComplaint(bookingId: bookingId, subject: subject, description: description);
      emit(const ComplaintState.success(message: 'Complaint raised successfully!'));
    } catch (e) {
      emit(ComplaintState.error(message: e.toString()));
    }
  }

  Future<void> _onFetchMyComplaints(Emitter<ComplaintState> emit) async {
    emit(const ComplaintState.loading());
    try {
      final complaints = await _repository.getMyComplaints();
      emit(ComplaintState.loaded(complaints: complaints));
    } catch (e) {
      emit(ComplaintState.error(message: e.toString()));
    }
  }

  Future<void> _onFetchAllComplaints(Emitter<ComplaintState> emit) async {
    emit(const ComplaintState.loading());
    try {
      final complaints = await _repository.getAllComplaints();
      emit(ComplaintState.loaded(complaints: complaints));
    } catch (e) {
      emit(ComplaintState.error(message: e.toString()));
    }
  }

  Future<void> _onResolveComplaint(String complaintId, String adminComment, Emitter<ComplaintState> emit) async {
    emit(const ComplaintState.submitting());
    try {
      await _repository.resolveComplaint(complaintId, adminComment);
      emit(const ComplaintState.success(message: 'Complaint resolved successfully!'));
      add(const ComplaintEvent.fetchAllComplaints()); // Refresh list
    } catch (e) {
      emit(ComplaintState.error(message: e.toString()));
    }
  }
}
