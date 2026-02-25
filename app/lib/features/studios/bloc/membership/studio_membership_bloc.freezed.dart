// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'studio_membership_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudioMembershipEvent {
  String get studioId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId, Map<String, dynamic> planData)
        createPlan,
    required TResult Function(String studioId) fetchPlans,
    required TResult Function(String customerId, String planId, String studioId)
        assignMembership,
    required TResult Function(Map<String, dynamic> ruleData, String studioId)
        createRecurringRule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId, Map<String, dynamic> planData)?
        createPlan,
    TResult? Function(String studioId)? fetchPlans,
    TResult? Function(String customerId, String planId, String studioId)?
        assignMembership,
    TResult? Function(Map<String, dynamic> ruleData, String studioId)?
        createRecurringRule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId, Map<String, dynamic> planData)?
        createPlan,
    TResult Function(String studioId)? fetchPlans,
    TResult Function(String customerId, String planId, String studioId)?
        assignMembership,
    TResult Function(Map<String, dynamic> ruleData, String studioId)?
        createRecurringRule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePlan value) createPlan,
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_AssignMembership value) assignMembership,
    required TResult Function(_CreateRecurringRule value) createRecurringRule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePlan value)? createPlan,
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_AssignMembership value)? assignMembership,
    TResult? Function(_CreateRecurringRule value)? createRecurringRule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePlan value)? createPlan,
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_AssignMembership value)? assignMembership,
    TResult Function(_CreateRecurringRule value)? createRecurringRule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudioMembershipEventCopyWith<StudioMembershipEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudioMembershipEventCopyWith<$Res> {
  factory $StudioMembershipEventCopyWith(StudioMembershipEvent value,
          $Res Function(StudioMembershipEvent) then) =
      _$StudioMembershipEventCopyWithImpl<$Res, StudioMembershipEvent>;
  @useResult
  $Res call({String studioId});
}

/// @nodoc
class _$StudioMembershipEventCopyWithImpl<$Res,
        $Val extends StudioMembershipEvent>
    implements $StudioMembershipEventCopyWith<$Res> {
  _$StudioMembershipEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studioId = null,
  }) {
    return _then(_value.copyWith(
      studioId: null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePlanImplCopyWith<$Res>
    implements $StudioMembershipEventCopyWith<$Res> {
  factory _$$CreatePlanImplCopyWith(
          _$CreatePlanImpl value, $Res Function(_$CreatePlanImpl) then) =
      __$$CreatePlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studioId, Map<String, dynamic> planData});
}

/// @nodoc
class __$$CreatePlanImplCopyWithImpl<$Res>
    extends _$StudioMembershipEventCopyWithImpl<$Res, _$CreatePlanImpl>
    implements _$$CreatePlanImplCopyWith<$Res> {
  __$$CreatePlanImplCopyWithImpl(
      _$CreatePlanImpl _value, $Res Function(_$CreatePlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studioId = null,
    Object? planData = null,
  }) {
    return _then(_$CreatePlanImpl(
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
      null == planData
          ? _value._planData
          : planData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$CreatePlanImpl implements _CreatePlan {
  const _$CreatePlanImpl(this.studioId, final Map<String, dynamic> planData)
      : _planData = planData;

  @override
  final String studioId;
  final Map<String, dynamic> _planData;
  @override
  Map<String, dynamic> get planData {
    if (_planData is EqualUnmodifiableMapView) return _planData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_planData);
  }

  @override
  String toString() {
    return 'StudioMembershipEvent.createPlan(studioId: $studioId, planData: $planData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlanImpl &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId) &&
            const DeepCollectionEquality().equals(other._planData, _planData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, studioId, const DeepCollectionEquality().hash(_planData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePlanImplCopyWith<_$CreatePlanImpl> get copyWith =>
      __$$CreatePlanImplCopyWithImpl<_$CreatePlanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId, Map<String, dynamic> planData)
        createPlan,
    required TResult Function(String studioId) fetchPlans,
    required TResult Function(String customerId, String planId, String studioId)
        assignMembership,
    required TResult Function(Map<String, dynamic> ruleData, String studioId)
        createRecurringRule,
  }) {
    return createPlan(studioId, planData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId, Map<String, dynamic> planData)?
        createPlan,
    TResult? Function(String studioId)? fetchPlans,
    TResult? Function(String customerId, String planId, String studioId)?
        assignMembership,
    TResult? Function(Map<String, dynamic> ruleData, String studioId)?
        createRecurringRule,
  }) {
    return createPlan?.call(studioId, planData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId, Map<String, dynamic> planData)?
        createPlan,
    TResult Function(String studioId)? fetchPlans,
    TResult Function(String customerId, String planId, String studioId)?
        assignMembership,
    TResult Function(Map<String, dynamic> ruleData, String studioId)?
        createRecurringRule,
    required TResult orElse(),
  }) {
    if (createPlan != null) {
      return createPlan(studioId, planData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePlan value) createPlan,
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_AssignMembership value) assignMembership,
    required TResult Function(_CreateRecurringRule value) createRecurringRule,
  }) {
    return createPlan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePlan value)? createPlan,
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_AssignMembership value)? assignMembership,
    TResult? Function(_CreateRecurringRule value)? createRecurringRule,
  }) {
    return createPlan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePlan value)? createPlan,
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_AssignMembership value)? assignMembership,
    TResult Function(_CreateRecurringRule value)? createRecurringRule,
    required TResult orElse(),
  }) {
    if (createPlan != null) {
      return createPlan(this);
    }
    return orElse();
  }
}

abstract class _CreatePlan implements StudioMembershipEvent {
  const factory _CreatePlan(
          final String studioId, final Map<String, dynamic> planData) =
      _$CreatePlanImpl;

  @override
  String get studioId;
  Map<String, dynamic> get planData;
  @override
  @JsonKey(ignore: true)
  _$$CreatePlanImplCopyWith<_$CreatePlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchPlansImplCopyWith<$Res>
    implements $StudioMembershipEventCopyWith<$Res> {
  factory _$$FetchPlansImplCopyWith(
          _$FetchPlansImpl value, $Res Function(_$FetchPlansImpl) then) =
      __$$FetchPlansImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studioId});
}

/// @nodoc
class __$$FetchPlansImplCopyWithImpl<$Res>
    extends _$StudioMembershipEventCopyWithImpl<$Res, _$FetchPlansImpl>
    implements _$$FetchPlansImplCopyWith<$Res> {
  __$$FetchPlansImplCopyWithImpl(
      _$FetchPlansImpl _value, $Res Function(_$FetchPlansImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studioId = null,
  }) {
    return _then(_$FetchPlansImpl(
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchPlansImpl implements _FetchPlans {
  const _$FetchPlansImpl(this.studioId);

  @override
  final String studioId;

  @override
  String toString() {
    return 'StudioMembershipEvent.fetchPlans(studioId: $studioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPlansImpl &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studioId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPlansImplCopyWith<_$FetchPlansImpl> get copyWith =>
      __$$FetchPlansImplCopyWithImpl<_$FetchPlansImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId, Map<String, dynamic> planData)
        createPlan,
    required TResult Function(String studioId) fetchPlans,
    required TResult Function(String customerId, String planId, String studioId)
        assignMembership,
    required TResult Function(Map<String, dynamic> ruleData, String studioId)
        createRecurringRule,
  }) {
    return fetchPlans(studioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId, Map<String, dynamic> planData)?
        createPlan,
    TResult? Function(String studioId)? fetchPlans,
    TResult? Function(String customerId, String planId, String studioId)?
        assignMembership,
    TResult? Function(Map<String, dynamic> ruleData, String studioId)?
        createRecurringRule,
  }) {
    return fetchPlans?.call(studioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId, Map<String, dynamic> planData)?
        createPlan,
    TResult Function(String studioId)? fetchPlans,
    TResult Function(String customerId, String planId, String studioId)?
        assignMembership,
    TResult Function(Map<String, dynamic> ruleData, String studioId)?
        createRecurringRule,
    required TResult orElse(),
  }) {
    if (fetchPlans != null) {
      return fetchPlans(studioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePlan value) createPlan,
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_AssignMembership value) assignMembership,
    required TResult Function(_CreateRecurringRule value) createRecurringRule,
  }) {
    return fetchPlans(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePlan value)? createPlan,
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_AssignMembership value)? assignMembership,
    TResult? Function(_CreateRecurringRule value)? createRecurringRule,
  }) {
    return fetchPlans?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePlan value)? createPlan,
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_AssignMembership value)? assignMembership,
    TResult Function(_CreateRecurringRule value)? createRecurringRule,
    required TResult orElse(),
  }) {
    if (fetchPlans != null) {
      return fetchPlans(this);
    }
    return orElse();
  }
}

abstract class _FetchPlans implements StudioMembershipEvent {
  const factory _FetchPlans(final String studioId) = _$FetchPlansImpl;

  @override
  String get studioId;
  @override
  @JsonKey(ignore: true)
  _$$FetchPlansImplCopyWith<_$FetchPlansImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssignMembershipImplCopyWith<$Res>
    implements $StudioMembershipEventCopyWith<$Res> {
  factory _$$AssignMembershipImplCopyWith(_$AssignMembershipImpl value,
          $Res Function(_$AssignMembershipImpl) then) =
      __$$AssignMembershipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String customerId, String planId, String studioId});
}

/// @nodoc
class __$$AssignMembershipImplCopyWithImpl<$Res>
    extends _$StudioMembershipEventCopyWithImpl<$Res, _$AssignMembershipImpl>
    implements _$$AssignMembershipImplCopyWith<$Res> {
  __$$AssignMembershipImplCopyWithImpl(_$AssignMembershipImpl _value,
      $Res Function(_$AssignMembershipImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? planId = null,
    Object? studioId = null,
  }) {
    return _then(_$AssignMembershipImpl(
      null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      null == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String,
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssignMembershipImpl implements _AssignMembership {
  const _$AssignMembershipImpl(this.customerId, this.planId, this.studioId);

  @override
  final String customerId;
  @override
  final String planId;
  @override
  final String studioId;

  @override
  String toString() {
    return 'StudioMembershipEvent.assignMembership(customerId: $customerId, planId: $planId, studioId: $studioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignMembershipImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId, planId, studioId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignMembershipImplCopyWith<_$AssignMembershipImpl> get copyWith =>
      __$$AssignMembershipImplCopyWithImpl<_$AssignMembershipImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId, Map<String, dynamic> planData)
        createPlan,
    required TResult Function(String studioId) fetchPlans,
    required TResult Function(String customerId, String planId, String studioId)
        assignMembership,
    required TResult Function(Map<String, dynamic> ruleData, String studioId)
        createRecurringRule,
  }) {
    return assignMembership(customerId, planId, studioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId, Map<String, dynamic> planData)?
        createPlan,
    TResult? Function(String studioId)? fetchPlans,
    TResult? Function(String customerId, String planId, String studioId)?
        assignMembership,
    TResult? Function(Map<String, dynamic> ruleData, String studioId)?
        createRecurringRule,
  }) {
    return assignMembership?.call(customerId, planId, studioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId, Map<String, dynamic> planData)?
        createPlan,
    TResult Function(String studioId)? fetchPlans,
    TResult Function(String customerId, String planId, String studioId)?
        assignMembership,
    TResult Function(Map<String, dynamic> ruleData, String studioId)?
        createRecurringRule,
    required TResult orElse(),
  }) {
    if (assignMembership != null) {
      return assignMembership(customerId, planId, studioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePlan value) createPlan,
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_AssignMembership value) assignMembership,
    required TResult Function(_CreateRecurringRule value) createRecurringRule,
  }) {
    return assignMembership(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePlan value)? createPlan,
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_AssignMembership value)? assignMembership,
    TResult? Function(_CreateRecurringRule value)? createRecurringRule,
  }) {
    return assignMembership?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePlan value)? createPlan,
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_AssignMembership value)? assignMembership,
    TResult Function(_CreateRecurringRule value)? createRecurringRule,
    required TResult orElse(),
  }) {
    if (assignMembership != null) {
      return assignMembership(this);
    }
    return orElse();
  }
}

abstract class _AssignMembership implements StudioMembershipEvent {
  const factory _AssignMembership(
          final String customerId, final String planId, final String studioId) =
      _$AssignMembershipImpl;

  String get customerId;
  String get planId;
  @override
  String get studioId;
  @override
  @JsonKey(ignore: true)
  _$$AssignMembershipImplCopyWith<_$AssignMembershipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateRecurringRuleImplCopyWith<$Res>
    implements $StudioMembershipEventCopyWith<$Res> {
  factory _$$CreateRecurringRuleImplCopyWith(_$CreateRecurringRuleImpl value,
          $Res Function(_$CreateRecurringRuleImpl) then) =
      __$$CreateRecurringRuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> ruleData, String studioId});
}

/// @nodoc
class __$$CreateRecurringRuleImplCopyWithImpl<$Res>
    extends _$StudioMembershipEventCopyWithImpl<$Res, _$CreateRecurringRuleImpl>
    implements _$$CreateRecurringRuleImplCopyWith<$Res> {
  __$$CreateRecurringRuleImplCopyWithImpl(_$CreateRecurringRuleImpl _value,
      $Res Function(_$CreateRecurringRuleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ruleData = null,
    Object? studioId = null,
  }) {
    return _then(_$CreateRecurringRuleImpl(
      null == ruleData
          ? _value._ruleData
          : ruleData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateRecurringRuleImpl implements _CreateRecurringRule {
  const _$CreateRecurringRuleImpl(
      final Map<String, dynamic> ruleData, this.studioId)
      : _ruleData = ruleData;

  final Map<String, dynamic> _ruleData;
  @override
  Map<String, dynamic> get ruleData {
    if (_ruleData is EqualUnmodifiableMapView) return _ruleData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_ruleData);
  }

  @override
  final String studioId;

  @override
  String toString() {
    return 'StudioMembershipEvent.createRecurringRule(ruleData: $ruleData, studioId: $studioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRecurringRuleImpl &&
            const DeepCollectionEquality().equals(other._ruleData, _ruleData) &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ruleData), studioId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRecurringRuleImplCopyWith<_$CreateRecurringRuleImpl> get copyWith =>
      __$$CreateRecurringRuleImplCopyWithImpl<_$CreateRecurringRuleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId, Map<String, dynamic> planData)
        createPlan,
    required TResult Function(String studioId) fetchPlans,
    required TResult Function(String customerId, String planId, String studioId)
        assignMembership,
    required TResult Function(Map<String, dynamic> ruleData, String studioId)
        createRecurringRule,
  }) {
    return createRecurringRule(ruleData, studioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId, Map<String, dynamic> planData)?
        createPlan,
    TResult? Function(String studioId)? fetchPlans,
    TResult? Function(String customerId, String planId, String studioId)?
        assignMembership,
    TResult? Function(Map<String, dynamic> ruleData, String studioId)?
        createRecurringRule,
  }) {
    return createRecurringRule?.call(ruleData, studioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId, Map<String, dynamic> planData)?
        createPlan,
    TResult Function(String studioId)? fetchPlans,
    TResult Function(String customerId, String planId, String studioId)?
        assignMembership,
    TResult Function(Map<String, dynamic> ruleData, String studioId)?
        createRecurringRule,
    required TResult orElse(),
  }) {
    if (createRecurringRule != null) {
      return createRecurringRule(ruleData, studioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePlan value) createPlan,
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_AssignMembership value) assignMembership,
    required TResult Function(_CreateRecurringRule value) createRecurringRule,
  }) {
    return createRecurringRule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePlan value)? createPlan,
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_AssignMembership value)? assignMembership,
    TResult? Function(_CreateRecurringRule value)? createRecurringRule,
  }) {
    return createRecurringRule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePlan value)? createPlan,
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_AssignMembership value)? assignMembership,
    TResult Function(_CreateRecurringRule value)? createRecurringRule,
    required TResult orElse(),
  }) {
    if (createRecurringRule != null) {
      return createRecurringRule(this);
    }
    return orElse();
  }
}

abstract class _CreateRecurringRule implements StudioMembershipEvent {
  const factory _CreateRecurringRule(
          final Map<String, dynamic> ruleData, final String studioId) =
      _$CreateRecurringRuleImpl;

  Map<String, dynamic> get ruleData;
  @override
  String get studioId;
  @override
  @JsonKey(ignore: true)
  _$$CreateRecurringRuleImplCopyWith<_$CreateRecurringRuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudioMembershipState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> plans) plansLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> plans)? plansLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> plans)? plansLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PlansLoaded value) plansLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PlansLoaded value)? plansLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PlansLoaded value)? plansLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudioMembershipStateCopyWith<$Res> {
  factory $StudioMembershipStateCopyWith(StudioMembershipState value,
          $Res Function(StudioMembershipState) then) =
      _$StudioMembershipStateCopyWithImpl<$Res, StudioMembershipState>;
}

/// @nodoc
class _$StudioMembershipStateCopyWithImpl<$Res,
        $Val extends StudioMembershipState>
    implements $StudioMembershipStateCopyWith<$Res> {
  _$StudioMembershipStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StudioMembershipStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'StudioMembershipState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> plans) plansLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> plans)? plansLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> plans)? plansLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PlansLoaded value) plansLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PlansLoaded value)? plansLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PlansLoaded value)? plansLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StudioMembershipState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$StudioMembershipStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'StudioMembershipState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> plans) plansLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> plans)? plansLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> plans)? plansLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PlansLoaded value) plansLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PlansLoaded value)? plansLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PlansLoaded value)? plansLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements StudioMembershipState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$PlansLoadedImplCopyWith<$Res> {
  factory _$$PlansLoadedImplCopyWith(
          _$PlansLoadedImpl value, $Res Function(_$PlansLoadedImpl) then) =
      __$$PlansLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> plans});
}

/// @nodoc
class __$$PlansLoadedImplCopyWithImpl<$Res>
    extends _$StudioMembershipStateCopyWithImpl<$Res, _$PlansLoadedImpl>
    implements _$$PlansLoadedImplCopyWith<$Res> {
  __$$PlansLoadedImplCopyWithImpl(
      _$PlansLoadedImpl _value, $Res Function(_$PlansLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plans = null,
  }) {
    return _then(_$PlansLoadedImpl(
      null == plans
          ? _value._plans
          : plans // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$PlansLoadedImpl implements _PlansLoaded {
  const _$PlansLoadedImpl(final List<dynamic> plans) : _plans = plans;

  final List<dynamic> _plans;
  @override
  List<dynamic> get plans {
    if (_plans is EqualUnmodifiableListView) return _plans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plans);
  }

  @override
  String toString() {
    return 'StudioMembershipState.plansLoaded(plans: $plans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlansLoadedImpl &&
            const DeepCollectionEquality().equals(other._plans, _plans));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_plans));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlansLoadedImplCopyWith<_$PlansLoadedImpl> get copyWith =>
      __$$PlansLoadedImplCopyWithImpl<_$PlansLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> plans) plansLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return plansLoaded(plans);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> plans)? plansLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return plansLoaded?.call(plans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> plans)? plansLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (plansLoaded != null) {
      return plansLoaded(plans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PlansLoaded value) plansLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return plansLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PlansLoaded value)? plansLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return plansLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PlansLoaded value)? plansLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (plansLoaded != null) {
      return plansLoaded(this);
    }
    return orElse();
  }
}

abstract class _PlansLoaded implements StudioMembershipState {
  const factory _PlansLoaded(final List<dynamic> plans) = _$PlansLoadedImpl;

  List<dynamic> get plans;
  @JsonKey(ignore: true)
  _$$PlansLoadedImplCopyWith<_$PlansLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$StudioMembershipStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StudioMembershipState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> plans) plansLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> plans)? plansLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> plans)? plansLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PlansLoaded value) plansLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PlansLoaded value)? plansLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PlansLoaded value)? plansLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements StudioMembershipState {
  const factory _Success(final String message) = _$SuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$StudioMembershipStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StudioMembershipState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> plans) plansLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> plans)? plansLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> plans)? plansLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PlansLoaded value) plansLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PlansLoaded value)? plansLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PlansLoaded value)? plansLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements StudioMembershipState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
