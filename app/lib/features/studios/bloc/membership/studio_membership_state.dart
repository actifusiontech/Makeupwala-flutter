part of 'studio_membership_bloc.dart';

@freezed
class StudioMembershipState with _$StudioMembershipState {
  const factory StudioMembershipState.initial() = _Initial;
  const factory StudioMembershipState.loading() = _Loading;
  const factory StudioMembershipState.plansLoaded(List<dynamic> plans) = _PlansLoaded;
  const factory StudioMembershipState.success(String message) = _Success;
  const factory StudioMembershipState.error(String message) = _Error;
}
