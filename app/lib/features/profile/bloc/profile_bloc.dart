import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/models/user.dart';
import '../../../core/models/rewards.dart';
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
        fetchReferrals: () => _onFetchReferrals(emit),
      );
    });
  }

  Future<void> _onFetchReferrals(Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    try {
      final referrals = await _repository.getReferrals();
      emit(ProfileState.referralsLoaded(referrals: referrals));
    } catch (e) {
      emit(ProfileState.error(message: e.toString()));
    }
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
      LoyaltyBalance? balance;
      try {
        if (!isArtist) { // Loyalty usually only for customers for now? Or both?
           balance = await _repository.getLoyaltyBalance();
        }
      } catch (_) {
         // ignore failure for loyalty, profile is primary
      }
      emit(ProfileState.loaded(user: user, loyaltyBalance: balance));
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
      // Ideally re-fetch or keep existing balance if we had previous state.
      // For now, simpler to verify logic: reload profile will fix it or we just don't pass balance here?
      // Since `emit` replaces state, we lose `loyaltyBalance` if we don't pass it.
      // Better to transition to loading then fetchProfile again?
      // Or just re-emit with existing balance if we can access it through `state`?
      // We can't access `state` easily inside helper unless we check `state.maybeWhen`.
      
      // Let's just refetch profile completely to be safe and simple.
      add(ProfileEvent.fetchProfile(isArtist: isArtist));
    } catch (e) {
      emit(ProfileState.error(message: e.toString()));
    }
  }
}
