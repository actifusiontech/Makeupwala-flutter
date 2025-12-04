import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/complaint_repository.dart';

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
}
