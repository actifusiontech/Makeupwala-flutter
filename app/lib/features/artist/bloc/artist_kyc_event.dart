part of 'artist_kyc_bloc.dart';

@freezed
class ArtistKYCEvent with _$ArtistKYCEvent {
  const factory ArtistKYCEvent.fetchStatus() = _FetchStatus;
  const factory ArtistKYCEvent.submitKYC({
    required String idProof,
    required String addressProof,
    required String certificate,
  }) = _SubmitKYC;
}
