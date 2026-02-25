part of 'studio_membership_bloc.dart';

@freezed
class StudioMembershipEvent with _$StudioMembershipEvent {
  const factory StudioMembershipEvent.createPlan(String studioId, Map<String, dynamic> planData) = _CreatePlan;
  const factory StudioMembershipEvent.fetchPlans(String studioId) = _FetchPlans;
  const factory StudioMembershipEvent.assignMembership(String customerId, String planId, String studioId) = _AssignMembership;
  const factory StudioMembershipEvent.createRecurringRule(Map<String, dynamic> ruleData, String studioId) = _CreateRecurringRule;
}
