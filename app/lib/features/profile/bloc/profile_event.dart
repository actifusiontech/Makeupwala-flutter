part of 'profile_bloc.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.fetchProfile({required bool isArtist}) = _FetchProfile;
  const factory ProfileEvent.updateProfile({
    required bool isArtist,
    required Map<String, dynamic> data,
  }) = _UpdateProfile;
  const factory ProfileEvent.uploadMedia({required String filePath}) = _UploadMedia;
  const factory ProfileEvent.fetchReferrals() = _FetchReferrals;
}
