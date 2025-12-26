part of 'artist_kyc_bloc.dart';

@freezed
class ArtistKYCState with _$ArtistKYCState {
  const factory ArtistKYCState.initial() = _Initial;
  const factory ArtistKYCState.loading() = _Loading;
  const factory ArtistKYCState.loaded({required ArtistKYC kyc}) = _Loaded;
  const factory ArtistKYCState.submitting() = _Submitting;
  const factory ArtistKYCState.submitted() = _Submitted;
  const factory ArtistKYCState.error({required String message}) = _Error;
}
