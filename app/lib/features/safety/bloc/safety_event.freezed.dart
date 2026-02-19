// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'safety_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SafetyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmergencyContacts,
    required TResult Function(String name, String phoneNumber, String relation)
        addEmergencyContact,
    required TResult Function(String contactId) removeEmergencyContact,
    required TResult Function(
            double lat, double lng, String? address, int batteryLevel)
        triggerSOS,
    required TResult Function(String alertId) cancelSOS,
    required TResult Function(SOSAlert alert) alertReceived,
    required TResult Function() dismissAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmergencyContacts,
    TResult? Function(String name, String phoneNumber, String relation)?
        addEmergencyContact,
    TResult? Function(String contactId)? removeEmergencyContact,
    TResult? Function(
            double lat, double lng, String? address, int batteryLevel)?
        triggerSOS,
    TResult? Function(String alertId)? cancelSOS,
    TResult? Function(SOSAlert alert)? alertReceived,
    TResult? Function()? dismissAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmergencyContacts,
    TResult Function(String name, String phoneNumber, String relation)?
        addEmergencyContact,
    TResult Function(String contactId)? removeEmergencyContact,
    TResult Function(double lat, double lng, String? address, int batteryLevel)?
        triggerSOS,
    TResult Function(String alertId)? cancelSOS,
    TResult Function(SOSAlert alert)? alertReceived,
    TResult Function()? dismissAlert,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmergencyContacts value)
        fetchEmergencyContacts,
    required TResult Function(_AddEmergencyContact value) addEmergencyContact,
    required TResult Function(_RemoveEmergencyContact value)
        removeEmergencyContact,
    required TResult Function(_TriggerSOS value) triggerSOS,
    required TResult Function(_CancelSOS value) cancelSOS,
    required TResult Function(_AlertReceived value) alertReceived,
    required TResult Function(_DismissAlert value) dismissAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmergencyContacts value)? fetchEmergencyContacts,
    TResult? Function(_AddEmergencyContact value)? addEmergencyContact,
    TResult? Function(_RemoveEmergencyContact value)? removeEmergencyContact,
    TResult? Function(_TriggerSOS value)? triggerSOS,
    TResult? Function(_CancelSOS value)? cancelSOS,
    TResult? Function(_AlertReceived value)? alertReceived,
    TResult? Function(_DismissAlert value)? dismissAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmergencyContacts value)? fetchEmergencyContacts,
    TResult Function(_AddEmergencyContact value)? addEmergencyContact,
    TResult Function(_RemoveEmergencyContact value)? removeEmergencyContact,
    TResult Function(_TriggerSOS value)? triggerSOS,
    TResult Function(_CancelSOS value)? cancelSOS,
    TResult Function(_AlertReceived value)? alertReceived,
    TResult Function(_DismissAlert value)? dismissAlert,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SafetyEventCopyWith<$Res> {
  factory $SafetyEventCopyWith(
          SafetyEvent value, $Res Function(SafetyEvent) then) =
      _$SafetyEventCopyWithImpl<$Res, SafetyEvent>;
}

/// @nodoc
class _$SafetyEventCopyWithImpl<$Res, $Val extends SafetyEvent>
    implements $SafetyEventCopyWith<$Res> {
  _$SafetyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchEmergencyContactsImplCopyWith<$Res> {
  factory _$$FetchEmergencyContactsImplCopyWith(
          _$FetchEmergencyContactsImpl value,
          $Res Function(_$FetchEmergencyContactsImpl) then) =
      __$$FetchEmergencyContactsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchEmergencyContactsImplCopyWithImpl<$Res>
    extends _$SafetyEventCopyWithImpl<$Res, _$FetchEmergencyContactsImpl>
    implements _$$FetchEmergencyContactsImplCopyWith<$Res> {
  __$$FetchEmergencyContactsImplCopyWithImpl(
      _$FetchEmergencyContactsImpl _value,
      $Res Function(_$FetchEmergencyContactsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchEmergencyContactsImpl implements _FetchEmergencyContacts {
  const _$FetchEmergencyContactsImpl();

  @override
  String toString() {
    return 'SafetyEvent.fetchEmergencyContacts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEmergencyContactsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmergencyContacts,
    required TResult Function(String name, String phoneNumber, String relation)
        addEmergencyContact,
    required TResult Function(String contactId) removeEmergencyContact,
    required TResult Function(
            double lat, double lng, String? address, int batteryLevel)
        triggerSOS,
    required TResult Function(String alertId) cancelSOS,
    required TResult Function(SOSAlert alert) alertReceived,
    required TResult Function() dismissAlert,
  }) {
    return fetchEmergencyContacts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmergencyContacts,
    TResult? Function(String name, String phoneNumber, String relation)?
        addEmergencyContact,
    TResult? Function(String contactId)? removeEmergencyContact,
    TResult? Function(
            double lat, double lng, String? address, int batteryLevel)?
        triggerSOS,
    TResult? Function(String alertId)? cancelSOS,
    TResult? Function(SOSAlert alert)? alertReceived,
    TResult? Function()? dismissAlert,
  }) {
    return fetchEmergencyContacts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmergencyContacts,
    TResult Function(String name, String phoneNumber, String relation)?
        addEmergencyContact,
    TResult Function(String contactId)? removeEmergencyContact,
    TResult Function(double lat, double lng, String? address, int batteryLevel)?
        triggerSOS,
    TResult Function(String alertId)? cancelSOS,
    TResult Function(SOSAlert alert)? alertReceived,
    TResult Function()? dismissAlert,
    required TResult orElse(),
  }) {
    if (fetchEmergencyContacts != null) {
      return fetchEmergencyContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmergencyContacts value)
        fetchEmergencyContacts,
    required TResult Function(_AddEmergencyContact value) addEmergencyContact,
    required TResult Function(_RemoveEmergencyContact value)
        removeEmergencyContact,
    required TResult Function(_TriggerSOS value) triggerSOS,
    required TResult Function(_CancelSOS value) cancelSOS,
    required TResult Function(_AlertReceived value) alertReceived,
    required TResult Function(_DismissAlert value) dismissAlert,
  }) {
    return fetchEmergencyContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmergencyContacts value)? fetchEmergencyContacts,
    TResult? Function(_AddEmergencyContact value)? addEmergencyContact,
    TResult? Function(_RemoveEmergencyContact value)? removeEmergencyContact,
    TResult? Function(_TriggerSOS value)? triggerSOS,
    TResult? Function(_CancelSOS value)? cancelSOS,
    TResult? Function(_AlertReceived value)? alertReceived,
    TResult? Function(_DismissAlert value)? dismissAlert,
  }) {
    return fetchEmergencyContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmergencyContacts value)? fetchEmergencyContacts,
    TResult Function(_AddEmergencyContact value)? addEmergencyContact,
    TResult Function(_RemoveEmergencyContact value)? removeEmergencyContact,
    TResult Function(_TriggerSOS value)? triggerSOS,
    TResult Function(_CancelSOS value)? cancelSOS,
    TResult Function(_AlertReceived value)? alertReceived,
    TResult Function(_DismissAlert value)? dismissAlert,
    required TResult orElse(),
  }) {
    if (fetchEmergencyContacts != null) {
      return fetchEmergencyContacts(this);
    }
    return orElse();
  }
}

abstract class _FetchEmergencyContacts implements SafetyEvent {
  const factory _FetchEmergencyContacts() = _$FetchEmergencyContactsImpl;
}

/// @nodoc
abstract class _$$AddEmergencyContactImplCopyWith<$Res> {
  factory _$$AddEmergencyContactImplCopyWith(_$AddEmergencyContactImpl value,
          $Res Function(_$AddEmergencyContactImpl) then) =
      __$$AddEmergencyContactImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String phoneNumber, String relation});
}

/// @nodoc
class __$$AddEmergencyContactImplCopyWithImpl<$Res>
    extends _$SafetyEventCopyWithImpl<$Res, _$AddEmergencyContactImpl>
    implements _$$AddEmergencyContactImplCopyWith<$Res> {
  __$$AddEmergencyContactImplCopyWithImpl(_$AddEmergencyContactImpl _value,
      $Res Function(_$AddEmergencyContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? relation = null,
  }) {
    return _then(_$AddEmergencyContactImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      relation: null == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddEmergencyContactImpl implements _AddEmergencyContact {
  const _$AddEmergencyContactImpl(
      {required this.name, required this.phoneNumber, required this.relation});

  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String relation;

  @override
  String toString() {
    return 'SafetyEvent.addEmergencyContact(name: $name, phoneNumber: $phoneNumber, relation: $relation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEmergencyContactImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.relation, relation) ||
                other.relation == relation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phoneNumber, relation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEmergencyContactImplCopyWith<_$AddEmergencyContactImpl> get copyWith =>
      __$$AddEmergencyContactImplCopyWithImpl<_$AddEmergencyContactImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmergencyContacts,
    required TResult Function(String name, String phoneNumber, String relation)
        addEmergencyContact,
    required TResult Function(String contactId) removeEmergencyContact,
    required TResult Function(
            double lat, double lng, String? address, int batteryLevel)
        triggerSOS,
    required TResult Function(String alertId) cancelSOS,
    required TResult Function(SOSAlert alert) alertReceived,
    required TResult Function() dismissAlert,
  }) {
    return addEmergencyContact(name, phoneNumber, relation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmergencyContacts,
    TResult? Function(String name, String phoneNumber, String relation)?
        addEmergencyContact,
    TResult? Function(String contactId)? removeEmergencyContact,
    TResult? Function(
            double lat, double lng, String? address, int batteryLevel)?
        triggerSOS,
    TResult? Function(String alertId)? cancelSOS,
    TResult? Function(SOSAlert alert)? alertReceived,
    TResult? Function()? dismissAlert,
  }) {
    return addEmergencyContact?.call(name, phoneNumber, relation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmergencyContacts,
    TResult Function(String name, String phoneNumber, String relation)?
        addEmergencyContact,
    TResult Function(String contactId)? removeEmergencyContact,
    TResult Function(double lat, double lng, String? address, int batteryLevel)?
        triggerSOS,
    TResult Function(String alertId)? cancelSOS,
    TResult Function(SOSAlert alert)? alertReceived,
    TResult Function()? dismissAlert,
    required TResult orElse(),
  }) {
    if (addEmergencyContact != null) {
      return addEmergencyContact(name, phoneNumber, relation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmergencyContacts value)
        fetchEmergencyContacts,
    required TResult Function(_AddEmergencyContact value) addEmergencyContact,
    required TResult Function(_RemoveEmergencyContact value)
        removeEmergencyContact,
    required TResult Function(_TriggerSOS value) triggerSOS,
    required TResult Function(_CancelSOS value) cancelSOS,
    required TResult Function(_AlertReceived value) alertReceived,
    required TResult Function(_DismissAlert value) dismissAlert,
  }) {
    return addEmergencyContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmergencyContacts value)? fetchEmergencyContacts,
    TResult? Function(_AddEmergencyContact value)? addEmergencyContact,
    TResult? Function(_RemoveEmergencyContact value)? removeEmergencyContact,
    TResult? Function(_TriggerSOS value)? triggerSOS,
    TResult? Function(_CancelSOS value)? cancelSOS,
    TResult? Function(_AlertReceived value)? alertReceived,
    TResult? Function(_DismissAlert value)? dismissAlert,
  }) {
    return addEmergencyContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmergencyContacts value)? fetchEmergencyContacts,
    TResult Function(_AddEmergencyContact value)? addEmergencyContact,
    TResult Function(_RemoveEmergencyContact value)? removeEmergencyContact,
    TResult Function(_TriggerSOS value)? triggerSOS,
    TResult Function(_CancelSOS value)? cancelSOS,
    TResult Function(_AlertReceived value)? alertReceived,
    TResult Function(_DismissAlert value)? dismissAlert,
    required TResult orElse(),
  }) {
    if (addEmergencyContact != null) {
      return addEmergencyContact(this);
    }
    return orElse();
  }
}

abstract class _AddEmergencyContact implements SafetyEvent {
  const factory _AddEmergencyContact(
      {required final String name,
      required final String phoneNumber,
      required final String relation}) = _$AddEmergencyContactImpl;

  String get name;
  String get phoneNumber;
  String get relation;
  @JsonKey(ignore: true)
  _$$AddEmergencyContactImplCopyWith<_$AddEmergencyContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveEmergencyContactImplCopyWith<$Res> {
  factory _$$RemoveEmergencyContactImplCopyWith(
          _$RemoveEmergencyContactImpl value,
          $Res Function(_$RemoveEmergencyContactImpl) then) =
      __$$RemoveEmergencyContactImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String contactId});
}

/// @nodoc
class __$$RemoveEmergencyContactImplCopyWithImpl<$Res>
    extends _$SafetyEventCopyWithImpl<$Res, _$RemoveEmergencyContactImpl>
    implements _$$RemoveEmergencyContactImplCopyWith<$Res> {
  __$$RemoveEmergencyContactImplCopyWithImpl(
      _$RemoveEmergencyContactImpl _value,
      $Res Function(_$RemoveEmergencyContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactId = null,
  }) {
    return _then(_$RemoveEmergencyContactImpl(
      null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveEmergencyContactImpl implements _RemoveEmergencyContact {
  const _$RemoveEmergencyContactImpl(this.contactId);

  @override
  final String contactId;

  @override
  String toString() {
    return 'SafetyEvent.removeEmergencyContact(contactId: $contactId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveEmergencyContactImpl &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveEmergencyContactImplCopyWith<_$RemoveEmergencyContactImpl>
      get copyWith => __$$RemoveEmergencyContactImplCopyWithImpl<
          _$RemoveEmergencyContactImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmergencyContacts,
    required TResult Function(String name, String phoneNumber, String relation)
        addEmergencyContact,
    required TResult Function(String contactId) removeEmergencyContact,
    required TResult Function(
            double lat, double lng, String? address, int batteryLevel)
        triggerSOS,
    required TResult Function(String alertId) cancelSOS,
    required TResult Function(SOSAlert alert) alertReceived,
    required TResult Function() dismissAlert,
  }) {
    return removeEmergencyContact(contactId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmergencyContacts,
    TResult? Function(String name, String phoneNumber, String relation)?
        addEmergencyContact,
    TResult? Function(String contactId)? removeEmergencyContact,
    TResult? Function(
            double lat, double lng, String? address, int batteryLevel)?
        triggerSOS,
    TResult? Function(String alertId)? cancelSOS,
    TResult? Function(SOSAlert alert)? alertReceived,
    TResult? Function()? dismissAlert,
  }) {
    return removeEmergencyContact?.call(contactId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmergencyContacts,
    TResult Function(String name, String phoneNumber, String relation)?
        addEmergencyContact,
    TResult Function(String contactId)? removeEmergencyContact,
    TResult Function(double lat, double lng, String? address, int batteryLevel)?
        triggerSOS,
    TResult Function(String alertId)? cancelSOS,
    TResult Function(SOSAlert alert)? alertReceived,
    TResult Function()? dismissAlert,
    required TResult orElse(),
  }) {
    if (removeEmergencyContact != null) {
      return removeEmergencyContact(contactId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmergencyContacts value)
        fetchEmergencyContacts,
    required TResult Function(_AddEmergencyContact value) addEmergencyContact,
    required TResult Function(_RemoveEmergencyContact value)
        removeEmergencyContact,
    required TResult Function(_TriggerSOS value) triggerSOS,
    required TResult Function(_CancelSOS value) cancelSOS,
    required TResult Function(_AlertReceived value) alertReceived,
    required TResult Function(_DismissAlert value) dismissAlert,
  }) {
    return removeEmergencyContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmergencyContacts value)? fetchEmergencyContacts,
    TResult? Function(_AddEmergencyContact value)? addEmergencyContact,
    TResult? Function(_RemoveEmergencyContact value)? removeEmergencyContact,
    TResult? Function(_TriggerSOS value)? triggerSOS,
    TResult? Function(_CancelSOS value)? cancelSOS,
    TResult? Function(_AlertReceived value)? alertReceived,
    TResult? Function(_DismissAlert value)? dismissAlert,
  }) {
    return removeEmergencyContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmergencyContacts value)? fetchEmergencyContacts,
    TResult Function(_AddEmergencyContact value)? addEmergencyContact,
    TResult Function(_RemoveEmergencyContact value)? removeEmergencyContact,
    TResult Function(_TriggerSOS value)? triggerSOS,
    TResult Function(_CancelSOS value)? cancelSOS,
    TResult Function(_AlertReceived value)? alertReceived,
    TResult Function(_DismissAlert value)? dismissAlert,
    required TResult orElse(),
  }) {
    if (removeEmergencyContact != null) {
      return removeEmergencyContact(this);
    }
    return orElse();
  }
}

abstract class _RemoveEmergencyContact implements SafetyEvent {
  const factory _RemoveEmergencyContact(final String contactId) =
      _$RemoveEmergencyContactImpl;

  String get contactId;
  @JsonKey(ignore: true)
  _$$RemoveEmergencyContactImplCopyWith<_$RemoveEmergencyContactImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TriggerSOSImplCopyWith<$Res> {
  factory _$$TriggerSOSImplCopyWith(
          _$TriggerSOSImpl value, $Res Function(_$TriggerSOSImpl) then) =
      __$$TriggerSOSImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double lat, double lng, String? address, int batteryLevel});
}

/// @nodoc
class __$$TriggerSOSImplCopyWithImpl<$Res>
    extends _$SafetyEventCopyWithImpl<$Res, _$TriggerSOSImpl>
    implements _$$TriggerSOSImplCopyWith<$Res> {
  __$$TriggerSOSImplCopyWithImpl(
      _$TriggerSOSImpl _value, $Res Function(_$TriggerSOSImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? address = freezed,
    Object? batteryLevel = null,
  }) {
    return _then(_$TriggerSOSImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      batteryLevel: null == batteryLevel
          ? _value.batteryLevel
          : batteryLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TriggerSOSImpl implements _TriggerSOS {
  const _$TriggerSOSImpl(
      {required this.lat,
      required this.lng,
      this.address,
      required this.batteryLevel});

  @override
  final double lat;
  @override
  final double lng;
  @override
  final String? address;
  @override
  final int batteryLevel;

  @override
  String toString() {
    return 'SafetyEvent.triggerSOS(lat: $lat, lng: $lng, address: $address, batteryLevel: $batteryLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TriggerSOSImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.batteryLevel, batteryLevel) ||
                other.batteryLevel == batteryLevel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, address, batteryLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TriggerSOSImplCopyWith<_$TriggerSOSImpl> get copyWith =>
      __$$TriggerSOSImplCopyWithImpl<_$TriggerSOSImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmergencyContacts,
    required TResult Function(String name, String phoneNumber, String relation)
        addEmergencyContact,
    required TResult Function(String contactId) removeEmergencyContact,
    required TResult Function(
            double lat, double lng, String? address, int batteryLevel)
        triggerSOS,
    required TResult Function(String alertId) cancelSOS,
    required TResult Function(SOSAlert alert) alertReceived,
    required TResult Function() dismissAlert,
  }) {
    return triggerSOS(lat, lng, address, batteryLevel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmergencyContacts,
    TResult? Function(String name, String phoneNumber, String relation)?
        addEmergencyContact,
    TResult? Function(String contactId)? removeEmergencyContact,
    TResult? Function(
            double lat, double lng, String? address, int batteryLevel)?
        triggerSOS,
    TResult? Function(String alertId)? cancelSOS,
    TResult? Function(SOSAlert alert)? alertReceived,
    TResult? Function()? dismissAlert,
  }) {
    return triggerSOS?.call(lat, lng, address, batteryLevel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmergencyContacts,
    TResult Function(String name, String phoneNumber, String relation)?
        addEmergencyContact,
    TResult Function(String contactId)? removeEmergencyContact,
    TResult Function(double lat, double lng, String? address, int batteryLevel)?
        triggerSOS,
    TResult Function(String alertId)? cancelSOS,
    TResult Function(SOSAlert alert)? alertReceived,
    TResult Function()? dismissAlert,
    required TResult orElse(),
  }) {
    if (triggerSOS != null) {
      return triggerSOS(lat, lng, address, batteryLevel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmergencyContacts value)
        fetchEmergencyContacts,
    required TResult Function(_AddEmergencyContact value) addEmergencyContact,
    required TResult Function(_RemoveEmergencyContact value)
        removeEmergencyContact,
    required TResult Function(_TriggerSOS value) triggerSOS,
    required TResult Function(_CancelSOS value) cancelSOS,
    required TResult Function(_AlertReceived value) alertReceived,
    required TResult Function(_DismissAlert value) dismissAlert,
  }) {
    return triggerSOS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmergencyContacts value)? fetchEmergencyContacts,
    TResult? Function(_AddEmergencyContact value)? addEmergencyContact,
    TResult? Function(_RemoveEmergencyContact value)? removeEmergencyContact,
    TResult? Function(_TriggerSOS value)? triggerSOS,
    TResult? Function(_CancelSOS value)? cancelSOS,
    TResult? Function(_AlertReceived value)? alertReceived,
    TResult? Function(_DismissAlert value)? dismissAlert,
  }) {
    return triggerSOS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmergencyContacts value)? fetchEmergencyContacts,
    TResult Function(_AddEmergencyContact value)? addEmergencyContact,
    TResult Function(_RemoveEmergencyContact value)? removeEmergencyContact,
    TResult Function(_TriggerSOS value)? triggerSOS,
    TResult Function(_CancelSOS value)? cancelSOS,
    TResult Function(_AlertReceived value)? alertReceived,
    TResult Function(_DismissAlert value)? dismissAlert,
    required TResult orElse(),
  }) {
    if (triggerSOS != null) {
      return triggerSOS(this);
    }
    return orElse();
  }
}

abstract class _TriggerSOS implements SafetyEvent {
  const factory _TriggerSOS(
      {required final double lat,
      required final double lng,
      final String? address,
      required final int batteryLevel}) = _$TriggerSOSImpl;

  double get lat;
  double get lng;
  String? get address;
  int get batteryLevel;
  @JsonKey(ignore: true)
  _$$TriggerSOSImplCopyWith<_$TriggerSOSImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelSOSImplCopyWith<$Res> {
  factory _$$CancelSOSImplCopyWith(
          _$CancelSOSImpl value, $Res Function(_$CancelSOSImpl) then) =
      __$$CancelSOSImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String alertId});
}

/// @nodoc
class __$$CancelSOSImplCopyWithImpl<$Res>
    extends _$SafetyEventCopyWithImpl<$Res, _$CancelSOSImpl>
    implements _$$CancelSOSImplCopyWith<$Res> {
  __$$CancelSOSImplCopyWithImpl(
      _$CancelSOSImpl _value, $Res Function(_$CancelSOSImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alertId = null,
  }) {
    return _then(_$CancelSOSImpl(
      null == alertId
          ? _value.alertId
          : alertId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelSOSImpl implements _CancelSOS {
  const _$CancelSOSImpl(this.alertId);

  @override
  final String alertId;

  @override
  String toString() {
    return 'SafetyEvent.cancelSOS(alertId: $alertId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelSOSImpl &&
            (identical(other.alertId, alertId) || other.alertId == alertId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alertId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelSOSImplCopyWith<_$CancelSOSImpl> get copyWith =>
      __$$CancelSOSImplCopyWithImpl<_$CancelSOSImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmergencyContacts,
    required TResult Function(String name, String phoneNumber, String relation)
        addEmergencyContact,
    required TResult Function(String contactId) removeEmergencyContact,
    required TResult Function(
            double lat, double lng, String? address, int batteryLevel)
        triggerSOS,
    required TResult Function(String alertId) cancelSOS,
    required TResult Function(SOSAlert alert) alertReceived,
    required TResult Function() dismissAlert,
  }) {
    return cancelSOS(alertId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmergencyContacts,
    TResult? Function(String name, String phoneNumber, String relation)?
        addEmergencyContact,
    TResult? Function(String contactId)? removeEmergencyContact,
    TResult? Function(
            double lat, double lng, String? address, int batteryLevel)?
        triggerSOS,
    TResult? Function(String alertId)? cancelSOS,
    TResult? Function(SOSAlert alert)? alertReceived,
    TResult? Function()? dismissAlert,
  }) {
    return cancelSOS?.call(alertId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmergencyContacts,
    TResult Function(String name, String phoneNumber, String relation)?
        addEmergencyContact,
    TResult Function(String contactId)? removeEmergencyContact,
    TResult Function(double lat, double lng, String? address, int batteryLevel)?
        triggerSOS,
    TResult Function(String alertId)? cancelSOS,
    TResult Function(SOSAlert alert)? alertReceived,
    TResult Function()? dismissAlert,
    required TResult orElse(),
  }) {
    if (cancelSOS != null) {
      return cancelSOS(alertId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmergencyContacts value)
        fetchEmergencyContacts,
    required TResult Function(_AddEmergencyContact value) addEmergencyContact,
    required TResult Function(_RemoveEmergencyContact value)
        removeEmergencyContact,
    required TResult Function(_TriggerSOS value) triggerSOS,
    required TResult Function(_CancelSOS value) cancelSOS,
    required TResult Function(_AlertReceived value) alertReceived,
    required TResult Function(_DismissAlert value) dismissAlert,
  }) {
    return cancelSOS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmergencyContacts value)? fetchEmergencyContacts,
    TResult? Function(_AddEmergencyContact value)? addEmergencyContact,
    TResult? Function(_RemoveEmergencyContact value)? removeEmergencyContact,
    TResult? Function(_TriggerSOS value)? triggerSOS,
    TResult? Function(_CancelSOS value)? cancelSOS,
    TResult? Function(_AlertReceived value)? alertReceived,
    TResult? Function(_DismissAlert value)? dismissAlert,
  }) {
    return cancelSOS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmergencyContacts value)? fetchEmergencyContacts,
    TResult Function(_AddEmergencyContact value)? addEmergencyContact,
    TResult Function(_RemoveEmergencyContact value)? removeEmergencyContact,
    TResult Function(_TriggerSOS value)? triggerSOS,
    TResult Function(_CancelSOS value)? cancelSOS,
    TResult Function(_AlertReceived value)? alertReceived,
    TResult Function(_DismissAlert value)? dismissAlert,
    required TResult orElse(),
  }) {
    if (cancelSOS != null) {
      return cancelSOS(this);
    }
    return orElse();
  }
}

abstract class _CancelSOS implements SafetyEvent {
  const factory _CancelSOS(final String alertId) = _$CancelSOSImpl;

  String get alertId;
  @JsonKey(ignore: true)
  _$$CancelSOSImplCopyWith<_$CancelSOSImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlertReceivedImplCopyWith<$Res> {
  factory _$$AlertReceivedImplCopyWith(
          _$AlertReceivedImpl value, $Res Function(_$AlertReceivedImpl) then) =
      __$$AlertReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SOSAlert alert});
}

/// @nodoc
class __$$AlertReceivedImplCopyWithImpl<$Res>
    extends _$SafetyEventCopyWithImpl<$Res, _$AlertReceivedImpl>
    implements _$$AlertReceivedImplCopyWith<$Res> {
  __$$AlertReceivedImplCopyWithImpl(
      _$AlertReceivedImpl _value, $Res Function(_$AlertReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alert = freezed,
  }) {
    return _then(_$AlertReceivedImpl(
      freezed == alert
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as SOSAlert,
    ));
  }
}

/// @nodoc

class _$AlertReceivedImpl implements _AlertReceived {
  const _$AlertReceivedImpl(this.alert);

  @override
  final SOSAlert alert;

  @override
  String toString() {
    return 'SafetyEvent.alertReceived(alert: $alert)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertReceivedImpl &&
            const DeepCollectionEquality().equals(other.alert, alert));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(alert));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertReceivedImplCopyWith<_$AlertReceivedImpl> get copyWith =>
      __$$AlertReceivedImplCopyWithImpl<_$AlertReceivedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmergencyContacts,
    required TResult Function(String name, String phoneNumber, String relation)
        addEmergencyContact,
    required TResult Function(String contactId) removeEmergencyContact,
    required TResult Function(
            double lat, double lng, String? address, int batteryLevel)
        triggerSOS,
    required TResult Function(String alertId) cancelSOS,
    required TResult Function(SOSAlert alert) alertReceived,
    required TResult Function() dismissAlert,
  }) {
    return alertReceived(alert);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmergencyContacts,
    TResult? Function(String name, String phoneNumber, String relation)?
        addEmergencyContact,
    TResult? Function(String contactId)? removeEmergencyContact,
    TResult? Function(
            double lat, double lng, String? address, int batteryLevel)?
        triggerSOS,
    TResult? Function(String alertId)? cancelSOS,
    TResult? Function(SOSAlert alert)? alertReceived,
    TResult? Function()? dismissAlert,
  }) {
    return alertReceived?.call(alert);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmergencyContacts,
    TResult Function(String name, String phoneNumber, String relation)?
        addEmergencyContact,
    TResult Function(String contactId)? removeEmergencyContact,
    TResult Function(double lat, double lng, String? address, int batteryLevel)?
        triggerSOS,
    TResult Function(String alertId)? cancelSOS,
    TResult Function(SOSAlert alert)? alertReceived,
    TResult Function()? dismissAlert,
    required TResult orElse(),
  }) {
    if (alertReceived != null) {
      return alertReceived(alert);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmergencyContacts value)
        fetchEmergencyContacts,
    required TResult Function(_AddEmergencyContact value) addEmergencyContact,
    required TResult Function(_RemoveEmergencyContact value)
        removeEmergencyContact,
    required TResult Function(_TriggerSOS value) triggerSOS,
    required TResult Function(_CancelSOS value) cancelSOS,
    required TResult Function(_AlertReceived value) alertReceived,
    required TResult Function(_DismissAlert value) dismissAlert,
  }) {
    return alertReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmergencyContacts value)? fetchEmergencyContacts,
    TResult? Function(_AddEmergencyContact value)? addEmergencyContact,
    TResult? Function(_RemoveEmergencyContact value)? removeEmergencyContact,
    TResult? Function(_TriggerSOS value)? triggerSOS,
    TResult? Function(_CancelSOS value)? cancelSOS,
    TResult? Function(_AlertReceived value)? alertReceived,
    TResult? Function(_DismissAlert value)? dismissAlert,
  }) {
    return alertReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmergencyContacts value)? fetchEmergencyContacts,
    TResult Function(_AddEmergencyContact value)? addEmergencyContact,
    TResult Function(_RemoveEmergencyContact value)? removeEmergencyContact,
    TResult Function(_TriggerSOS value)? triggerSOS,
    TResult Function(_CancelSOS value)? cancelSOS,
    TResult Function(_AlertReceived value)? alertReceived,
    TResult Function(_DismissAlert value)? dismissAlert,
    required TResult orElse(),
  }) {
    if (alertReceived != null) {
      return alertReceived(this);
    }
    return orElse();
  }
}

abstract class _AlertReceived implements SafetyEvent {
  const factory _AlertReceived(final SOSAlert alert) = _$AlertReceivedImpl;

  SOSAlert get alert;
  @JsonKey(ignore: true)
  _$$AlertReceivedImplCopyWith<_$AlertReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DismissAlertImplCopyWith<$Res> {
  factory _$$DismissAlertImplCopyWith(
          _$DismissAlertImpl value, $Res Function(_$DismissAlertImpl) then) =
      __$$DismissAlertImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DismissAlertImplCopyWithImpl<$Res>
    extends _$SafetyEventCopyWithImpl<$Res, _$DismissAlertImpl>
    implements _$$DismissAlertImplCopyWith<$Res> {
  __$$DismissAlertImplCopyWithImpl(
      _$DismissAlertImpl _value, $Res Function(_$DismissAlertImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DismissAlertImpl implements _DismissAlert {
  const _$DismissAlertImpl();

  @override
  String toString() {
    return 'SafetyEvent.dismissAlert()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DismissAlertImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmergencyContacts,
    required TResult Function(String name, String phoneNumber, String relation)
        addEmergencyContact,
    required TResult Function(String contactId) removeEmergencyContact,
    required TResult Function(
            double lat, double lng, String? address, int batteryLevel)
        triggerSOS,
    required TResult Function(String alertId) cancelSOS,
    required TResult Function(SOSAlert alert) alertReceived,
    required TResult Function() dismissAlert,
  }) {
    return dismissAlert();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmergencyContacts,
    TResult? Function(String name, String phoneNumber, String relation)?
        addEmergencyContact,
    TResult? Function(String contactId)? removeEmergencyContact,
    TResult? Function(
            double lat, double lng, String? address, int batteryLevel)?
        triggerSOS,
    TResult? Function(String alertId)? cancelSOS,
    TResult? Function(SOSAlert alert)? alertReceived,
    TResult? Function()? dismissAlert,
  }) {
    return dismissAlert?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmergencyContacts,
    TResult Function(String name, String phoneNumber, String relation)?
        addEmergencyContact,
    TResult Function(String contactId)? removeEmergencyContact,
    TResult Function(double lat, double lng, String? address, int batteryLevel)?
        triggerSOS,
    TResult Function(String alertId)? cancelSOS,
    TResult Function(SOSAlert alert)? alertReceived,
    TResult Function()? dismissAlert,
    required TResult orElse(),
  }) {
    if (dismissAlert != null) {
      return dismissAlert();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmergencyContacts value)
        fetchEmergencyContacts,
    required TResult Function(_AddEmergencyContact value) addEmergencyContact,
    required TResult Function(_RemoveEmergencyContact value)
        removeEmergencyContact,
    required TResult Function(_TriggerSOS value) triggerSOS,
    required TResult Function(_CancelSOS value) cancelSOS,
    required TResult Function(_AlertReceived value) alertReceived,
    required TResult Function(_DismissAlert value) dismissAlert,
  }) {
    return dismissAlert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmergencyContacts value)? fetchEmergencyContacts,
    TResult? Function(_AddEmergencyContact value)? addEmergencyContact,
    TResult? Function(_RemoveEmergencyContact value)? removeEmergencyContact,
    TResult? Function(_TriggerSOS value)? triggerSOS,
    TResult? Function(_CancelSOS value)? cancelSOS,
    TResult? Function(_AlertReceived value)? alertReceived,
    TResult? Function(_DismissAlert value)? dismissAlert,
  }) {
    return dismissAlert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmergencyContacts value)? fetchEmergencyContacts,
    TResult Function(_AddEmergencyContact value)? addEmergencyContact,
    TResult Function(_RemoveEmergencyContact value)? removeEmergencyContact,
    TResult Function(_TriggerSOS value)? triggerSOS,
    TResult Function(_CancelSOS value)? cancelSOS,
    TResult Function(_AlertReceived value)? alertReceived,
    TResult Function(_DismissAlert value)? dismissAlert,
    required TResult orElse(),
  }) {
    if (dismissAlert != null) {
      return dismissAlert(this);
    }
    return orElse();
  }
}

abstract class _DismissAlert implements SafetyEvent {
  const factory _DismissAlert() = _$DismissAlertImpl;
}
