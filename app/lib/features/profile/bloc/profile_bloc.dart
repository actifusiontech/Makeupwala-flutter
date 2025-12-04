import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/models/user.dart';
import '../data/profile_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _repository;

  ProfileBloc({ProfileRepository? repository})
      : _repository = repository ?? ProfileRepository(),
        super(const ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.when(
        fetchProfile: (isArtist) => _onFetchProfile(isArtist, emit),
        updateProfile: (isArtist, data) => _onUpdateProfile(isArtist, data, emit),
        uploadMedia: (filePath) => _onUploadMedia(filePath, emit),
      );
    });
  }

  // ... (existing methods)

  Future<void> _onUploadMedia(String filePath, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    try {
      await _repository.uploadMedia(filePath);
      // Refresh profile to show new media
      add(const ProfileEvent.fetchProfile(isArtist: true));
    } catch (e) {
      emit(ProfileState.error(message: e.toString()));
    }
  }

  Future<void> _onFetchProfile(bool isArtist, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    try {
      final user = await _repository.getMyProfile(isArtist: isArtist);
      emit(ProfileState.loaded(user: user));
    } catch (e) {
      emit(ProfileState.error(message: e.toString()));
    }
  }

  Future<void> _onUpdateProfile(
    bool isArtist,
    Map<String, dynamic> data,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());
    try {
      final user = await _repository.updateProfile(isArtist: isArtist, data: data);
      emit(ProfileState.loaded(user: user));
    } catch (e) {
      emit(ProfileState.error(message: e.toString()));
    }
  }
}
