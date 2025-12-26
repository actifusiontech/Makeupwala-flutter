import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/artist_repository.dart';
import '../../../core/models/artist.dart';

part 'artist_kyc_event.dart';
part 'artist_kyc_state.dart';
part 'artist_kyc_bloc.freezed.dart';

class ArtistKYCBloc extends Bloc<ArtistKYCEvent, ArtistKYCState> {
  final ArtistRepository _repository;

  ArtistKYCBloc({ArtistRepository? repository})
      : _repository = repository ?? ArtistRepository(),
        super(const ArtistKYCState.initial()) {
    on<ArtistKYCEvent>((event, emit) async {
      await event.when(
        fetchStatus: () => _onFetchStatus(emit),
        submitKYC: (idProof, addressProof, certificate) => 
            _onSubmitKYC(idProof, addressProof, certificate, emit),
      );
    });
  }

  Future<void> _onFetchStatus(Emitter<ArtistKYCState> emit) async {
    emit(const ArtistKYCState.loading());
    try {
      final kyc = await _repository.getKYCStatus();
      emit(ArtistKYCState.loaded(kyc: kyc));
    } catch (e) {
      emit(ArtistKYCState.error(message: 'Failed to fetch KYC status: $e'));
    }
  }

  Future<void> _onSubmitKYC(
    String idProof,
    String addressProof,
    String certificate,
    Emitter<ArtistKYCState> emit,
  ) async {
    emit(const ArtistKYCState.submitting());
    try {
      await _repository.submitKYC(
        idProofUrl: idProof,
        addressProofUrl: addressProof,
        certificateUrl: certificate,
      );
      emit(const ArtistKYCState.submitted());
      // Fetch updated status
      add(const ArtistKYCEvent.fetchStatus());
    } catch (e) {
      emit(ArtistKYCState.error(message: 'Failed to submit KYC: $e'));
    }
  }
}
