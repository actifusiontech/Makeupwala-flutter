// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_crm_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerCrmEvent {
  String get studioId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String studioId, Map<String, dynamic> customerData)
        createCustomer,
    required TResult Function(String studioId) getCustomers,
    required TResult Function(
            String customerId, String studioId, Map<String, dynamic> visitData)
        recordCustomerVisit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId, Map<String, dynamic> customerData)?
        createCustomer,
    TResult? Function(String studioId)? getCustomers,
    TResult? Function(
            String customerId, String studioId, Map<String, dynamic> visitData)?
        recordCustomerVisit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId, Map<String, dynamic> customerData)?
        createCustomer,
    TResult Function(String studioId)? getCustomers,
    TResult Function(
            String customerId, String studioId, Map<String, dynamic> visitData)?
        recordCustomerVisit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateCustomer value) createCustomer,
    required TResult Function(_GetCustomers value) getCustomers,
    required TResult Function(_RecordCustomerVisit value) recordCustomerVisit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateCustomer value)? createCustomer,
    TResult? Function(_GetCustomers value)? getCustomers,
    TResult? Function(_RecordCustomerVisit value)? recordCustomerVisit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCustomer value)? createCustomer,
    TResult Function(_GetCustomers value)? getCustomers,
    TResult Function(_RecordCustomerVisit value)? recordCustomerVisit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerCrmEventCopyWith<CustomerCrmEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCrmEventCopyWith<$Res> {
  factory $CustomerCrmEventCopyWith(
          CustomerCrmEvent value, $Res Function(CustomerCrmEvent) then) =
      _$CustomerCrmEventCopyWithImpl<$Res, CustomerCrmEvent>;
  @useResult
  $Res call({String studioId});
}

/// @nodoc
class _$CustomerCrmEventCopyWithImpl<$Res, $Val extends CustomerCrmEvent>
    implements $CustomerCrmEventCopyWith<$Res> {
  _$CustomerCrmEventCopyWithImpl(this._value, this._then);

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
abstract class _$$CreateCustomerImplCopyWith<$Res>
    implements $CustomerCrmEventCopyWith<$Res> {
  factory _$$CreateCustomerImplCopyWith(_$CreateCustomerImpl value,
          $Res Function(_$CreateCustomerImpl) then) =
      __$$CreateCustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studioId, Map<String, dynamic> customerData});
}

/// @nodoc
class __$$CreateCustomerImplCopyWithImpl<$Res>
    extends _$CustomerCrmEventCopyWithImpl<$Res, _$CreateCustomerImpl>
    implements _$$CreateCustomerImplCopyWith<$Res> {
  __$$CreateCustomerImplCopyWithImpl(
      _$CreateCustomerImpl _value, $Res Function(_$CreateCustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studioId = null,
    Object? customerData = null,
  }) {
    return _then(_$CreateCustomerImpl(
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
      null == customerData
          ? _value._customerData
          : customerData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$CreateCustomerImpl implements _CreateCustomer {
  const _$CreateCustomerImpl(
      this.studioId, final Map<String, dynamic> customerData)
      : _customerData = customerData;

  @override
  final String studioId;
  final Map<String, dynamic> _customerData;
  @override
  Map<String, dynamic> get customerData {
    if (_customerData is EqualUnmodifiableMapView) return _customerData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_customerData);
  }

  @override
  String toString() {
    return 'CustomerCrmEvent.createCustomer(studioId: $studioId, customerData: $customerData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCustomerImpl &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId) &&
            const DeepCollectionEquality()
                .equals(other._customerData, _customerData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studioId,
      const DeepCollectionEquality().hash(_customerData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCustomerImplCopyWith<_$CreateCustomerImpl> get copyWith =>
      __$$CreateCustomerImplCopyWithImpl<_$CreateCustomerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String studioId, Map<String, dynamic> customerData)
        createCustomer,
    required TResult Function(String studioId) getCustomers,
    required TResult Function(
            String customerId, String studioId, Map<String, dynamic> visitData)
        recordCustomerVisit,
  }) {
    return createCustomer(studioId, customerData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId, Map<String, dynamic> customerData)?
        createCustomer,
    TResult? Function(String studioId)? getCustomers,
    TResult? Function(
            String customerId, String studioId, Map<String, dynamic> visitData)?
        recordCustomerVisit,
  }) {
    return createCustomer?.call(studioId, customerData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId, Map<String, dynamic> customerData)?
        createCustomer,
    TResult Function(String studioId)? getCustomers,
    TResult Function(
            String customerId, String studioId, Map<String, dynamic> visitData)?
        recordCustomerVisit,
    required TResult orElse(),
  }) {
    if (createCustomer != null) {
      return createCustomer(studioId, customerData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateCustomer value) createCustomer,
    required TResult Function(_GetCustomers value) getCustomers,
    required TResult Function(_RecordCustomerVisit value) recordCustomerVisit,
  }) {
    return createCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateCustomer value)? createCustomer,
    TResult? Function(_GetCustomers value)? getCustomers,
    TResult? Function(_RecordCustomerVisit value)? recordCustomerVisit,
  }) {
    return createCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCustomer value)? createCustomer,
    TResult Function(_GetCustomers value)? getCustomers,
    TResult Function(_RecordCustomerVisit value)? recordCustomerVisit,
    required TResult orElse(),
  }) {
    if (createCustomer != null) {
      return createCustomer(this);
    }
    return orElse();
  }
}

abstract class _CreateCustomer implements CustomerCrmEvent {
  const factory _CreateCustomer(
          final String studioId, final Map<String, dynamic> customerData) =
      _$CreateCustomerImpl;

  @override
  String get studioId;
  Map<String, dynamic> get customerData;
  @override
  @JsonKey(ignore: true)
  _$$CreateCustomerImplCopyWith<_$CreateCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCustomersImplCopyWith<$Res>
    implements $CustomerCrmEventCopyWith<$Res> {
  factory _$$GetCustomersImplCopyWith(
          _$GetCustomersImpl value, $Res Function(_$GetCustomersImpl) then) =
      __$$GetCustomersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studioId});
}

/// @nodoc
class __$$GetCustomersImplCopyWithImpl<$Res>
    extends _$CustomerCrmEventCopyWithImpl<$Res, _$GetCustomersImpl>
    implements _$$GetCustomersImplCopyWith<$Res> {
  __$$GetCustomersImplCopyWithImpl(
      _$GetCustomersImpl _value, $Res Function(_$GetCustomersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studioId = null,
  }) {
    return _then(_$GetCustomersImpl(
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCustomersImpl implements _GetCustomers {
  const _$GetCustomersImpl(this.studioId);

  @override
  final String studioId;

  @override
  String toString() {
    return 'CustomerCrmEvent.getCustomers(studioId: $studioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomersImpl &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studioId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomersImplCopyWith<_$GetCustomersImpl> get copyWith =>
      __$$GetCustomersImplCopyWithImpl<_$GetCustomersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String studioId, Map<String, dynamic> customerData)
        createCustomer,
    required TResult Function(String studioId) getCustomers,
    required TResult Function(
            String customerId, String studioId, Map<String, dynamic> visitData)
        recordCustomerVisit,
  }) {
    return getCustomers(studioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId, Map<String, dynamic> customerData)?
        createCustomer,
    TResult? Function(String studioId)? getCustomers,
    TResult? Function(
            String customerId, String studioId, Map<String, dynamic> visitData)?
        recordCustomerVisit,
  }) {
    return getCustomers?.call(studioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId, Map<String, dynamic> customerData)?
        createCustomer,
    TResult Function(String studioId)? getCustomers,
    TResult Function(
            String customerId, String studioId, Map<String, dynamic> visitData)?
        recordCustomerVisit,
    required TResult orElse(),
  }) {
    if (getCustomers != null) {
      return getCustomers(studioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateCustomer value) createCustomer,
    required TResult Function(_GetCustomers value) getCustomers,
    required TResult Function(_RecordCustomerVisit value) recordCustomerVisit,
  }) {
    return getCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateCustomer value)? createCustomer,
    TResult? Function(_GetCustomers value)? getCustomers,
    TResult? Function(_RecordCustomerVisit value)? recordCustomerVisit,
  }) {
    return getCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCustomer value)? createCustomer,
    TResult Function(_GetCustomers value)? getCustomers,
    TResult Function(_RecordCustomerVisit value)? recordCustomerVisit,
    required TResult orElse(),
  }) {
    if (getCustomers != null) {
      return getCustomers(this);
    }
    return orElse();
  }
}

abstract class _GetCustomers implements CustomerCrmEvent {
  const factory _GetCustomers(final String studioId) = _$GetCustomersImpl;

  @override
  String get studioId;
  @override
  @JsonKey(ignore: true)
  _$$GetCustomersImplCopyWith<_$GetCustomersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordCustomerVisitImplCopyWith<$Res>
    implements $CustomerCrmEventCopyWith<$Res> {
  factory _$$RecordCustomerVisitImplCopyWith(_$RecordCustomerVisitImpl value,
          $Res Function(_$RecordCustomerVisitImpl) then) =
      __$$RecordCustomerVisitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String customerId, String studioId, Map<String, dynamic> visitData});
}

/// @nodoc
class __$$RecordCustomerVisitImplCopyWithImpl<$Res>
    extends _$CustomerCrmEventCopyWithImpl<$Res, _$RecordCustomerVisitImpl>
    implements _$$RecordCustomerVisitImplCopyWith<$Res> {
  __$$RecordCustomerVisitImplCopyWithImpl(_$RecordCustomerVisitImpl _value,
      $Res Function(_$RecordCustomerVisitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? studioId = null,
    Object? visitData = null,
  }) {
    return _then(_$RecordCustomerVisitImpl(
      null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
      null == visitData
          ? _value._visitData
          : visitData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$RecordCustomerVisitImpl implements _RecordCustomerVisit {
  const _$RecordCustomerVisitImpl(
      this.customerId, this.studioId, final Map<String, dynamic> visitData)
      : _visitData = visitData;

  @override
  final String customerId;
  @override
  final String studioId;
  final Map<String, dynamic> _visitData;
  @override
  Map<String, dynamic> get visitData {
    if (_visitData is EqualUnmodifiableMapView) return _visitData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_visitData);
  }

  @override
  String toString() {
    return 'CustomerCrmEvent.recordCustomerVisit(customerId: $customerId, studioId: $studioId, visitData: $visitData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordCustomerVisitImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId) &&
            const DeepCollectionEquality()
                .equals(other._visitData, _visitData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId, studioId,
      const DeepCollectionEquality().hash(_visitData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordCustomerVisitImplCopyWith<_$RecordCustomerVisitImpl> get copyWith =>
      __$$RecordCustomerVisitImplCopyWithImpl<_$RecordCustomerVisitImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String studioId, Map<String, dynamic> customerData)
        createCustomer,
    required TResult Function(String studioId) getCustomers,
    required TResult Function(
            String customerId, String studioId, Map<String, dynamic> visitData)
        recordCustomerVisit,
  }) {
    return recordCustomerVisit(customerId, studioId, visitData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId, Map<String, dynamic> customerData)?
        createCustomer,
    TResult? Function(String studioId)? getCustomers,
    TResult? Function(
            String customerId, String studioId, Map<String, dynamic> visitData)?
        recordCustomerVisit,
  }) {
    return recordCustomerVisit?.call(customerId, studioId, visitData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId, Map<String, dynamic> customerData)?
        createCustomer,
    TResult Function(String studioId)? getCustomers,
    TResult Function(
            String customerId, String studioId, Map<String, dynamic> visitData)?
        recordCustomerVisit,
    required TResult orElse(),
  }) {
    if (recordCustomerVisit != null) {
      return recordCustomerVisit(customerId, studioId, visitData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateCustomer value) createCustomer,
    required TResult Function(_GetCustomers value) getCustomers,
    required TResult Function(_RecordCustomerVisit value) recordCustomerVisit,
  }) {
    return recordCustomerVisit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateCustomer value)? createCustomer,
    TResult? Function(_GetCustomers value)? getCustomers,
    TResult? Function(_RecordCustomerVisit value)? recordCustomerVisit,
  }) {
    return recordCustomerVisit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCustomer value)? createCustomer,
    TResult Function(_GetCustomers value)? getCustomers,
    TResult Function(_RecordCustomerVisit value)? recordCustomerVisit,
    required TResult orElse(),
  }) {
    if (recordCustomerVisit != null) {
      return recordCustomerVisit(this);
    }
    return orElse();
  }
}

abstract class _RecordCustomerVisit implements CustomerCrmEvent {
  const factory _RecordCustomerVisit(
      final String customerId,
      final String studioId,
      final Map<String, dynamic> visitData) = _$RecordCustomerVisitImpl;

  String get customerId;
  @override
  String get studioId;
  Map<String, dynamic> get visitData;
  @override
  @JsonKey(ignore: true)
  _$$RecordCustomerVisitImplCopyWith<_$RecordCustomerVisitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerCrmState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> customers) customersLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> customers)? customersLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> customers)? customersLoaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CustomersLoaded value) customersLoaded,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CustomersLoaded value)? customersLoaded,
    TResult? Function(_ActionSuccess value)? actionSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CustomersLoaded value)? customersLoaded,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCrmStateCopyWith<$Res> {
  factory $CustomerCrmStateCopyWith(
          CustomerCrmState value, $Res Function(CustomerCrmState) then) =
      _$CustomerCrmStateCopyWithImpl<$Res, CustomerCrmState>;
}

/// @nodoc
class _$CustomerCrmStateCopyWithImpl<$Res, $Val extends CustomerCrmState>
    implements $CustomerCrmStateCopyWith<$Res> {
  _$CustomerCrmStateCopyWithImpl(this._value, this._then);

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
    extends _$CustomerCrmStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CustomerCrmState.initial()';
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
    required TResult Function(List<dynamic> customers) customersLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> customers)? customersLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> customers)? customersLoaded,
    TResult Function(String message)? actionSuccess,
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
    required TResult Function(_CustomersLoaded value) customersLoaded,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CustomersLoaded value)? customersLoaded,
    TResult? Function(_ActionSuccess value)? actionSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CustomersLoaded value)? customersLoaded,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CustomerCrmState {
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
    extends _$CustomerCrmStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'CustomerCrmState.loading()';
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
    required TResult Function(List<dynamic> customers) customersLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> customers)? customersLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> customers)? customersLoaded,
    TResult Function(String message)? actionSuccess,
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
    required TResult Function(_CustomersLoaded value) customersLoaded,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CustomersLoaded value)? customersLoaded,
    TResult? Function(_ActionSuccess value)? actionSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CustomersLoaded value)? customersLoaded,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CustomerCrmState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$CustomersLoadedImplCopyWith<$Res> {
  factory _$$CustomersLoadedImplCopyWith(_$CustomersLoadedImpl value,
          $Res Function(_$CustomersLoadedImpl) then) =
      __$$CustomersLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> customers});
}

/// @nodoc
class __$$CustomersLoadedImplCopyWithImpl<$Res>
    extends _$CustomerCrmStateCopyWithImpl<$Res, _$CustomersLoadedImpl>
    implements _$$CustomersLoadedImplCopyWith<$Res> {
  __$$CustomersLoadedImplCopyWithImpl(
      _$CustomersLoadedImpl _value, $Res Function(_$CustomersLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
  }) {
    return _then(_$CustomersLoadedImpl(
      null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$CustomersLoadedImpl implements _CustomersLoaded {
  const _$CustomersLoadedImpl(final List<dynamic> customers)
      : _customers = customers;

  final List<dynamic> _customers;
  @override
  List<dynamic> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  String toString() {
    return 'CustomerCrmState.customersLoaded(customers: $customers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomersLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_customers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomersLoadedImplCopyWith<_$CustomersLoadedImpl> get copyWith =>
      __$$CustomersLoadedImplCopyWithImpl<_$CustomersLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> customers) customersLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return customersLoaded(customers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> customers)? customersLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return customersLoaded?.call(customers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> customers)? customersLoaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (customersLoaded != null) {
      return customersLoaded(customers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CustomersLoaded value) customersLoaded,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_Error value) error,
  }) {
    return customersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CustomersLoaded value)? customersLoaded,
    TResult? Function(_ActionSuccess value)? actionSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return customersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CustomersLoaded value)? customersLoaded,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (customersLoaded != null) {
      return customersLoaded(this);
    }
    return orElse();
  }
}

abstract class _CustomersLoaded implements CustomerCrmState {
  const factory _CustomersLoaded(final List<dynamic> customers) =
      _$CustomersLoadedImpl;

  List<dynamic> get customers;
  @JsonKey(ignore: true)
  _$$CustomersLoadedImplCopyWith<_$CustomersLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActionSuccessImplCopyWith<$Res> {
  factory _$$ActionSuccessImplCopyWith(
          _$ActionSuccessImpl value, $Res Function(_$ActionSuccessImpl) then) =
      __$$ActionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ActionSuccessImplCopyWithImpl<$Res>
    extends _$CustomerCrmStateCopyWithImpl<$Res, _$ActionSuccessImpl>
    implements _$$ActionSuccessImplCopyWith<$Res> {
  __$$ActionSuccessImplCopyWithImpl(
      _$ActionSuccessImpl _value, $Res Function(_$ActionSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ActionSuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActionSuccessImpl implements _ActionSuccess {
  const _$ActionSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CustomerCrmState.actionSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionSuccessImplCopyWith<_$ActionSuccessImpl> get copyWith =>
      __$$ActionSuccessImplCopyWithImpl<_$ActionSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> customers) customersLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return actionSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> customers)? customersLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return actionSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> customers)? customersLoaded,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CustomersLoaded value) customersLoaded,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_Error value) error,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CustomersLoaded value)? customersLoaded,
    TResult? Function(_ActionSuccess value)? actionSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CustomersLoaded value)? customersLoaded,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class _ActionSuccess implements CustomerCrmState {
  const factory _ActionSuccess(final String message) = _$ActionSuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ActionSuccessImplCopyWith<_$ActionSuccessImpl> get copyWith =>
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
    extends _$CustomerCrmStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'CustomerCrmState.error(message: $message)';
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
    required TResult Function(List<dynamic> customers) customersLoaded,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> customers)? customersLoaded,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> customers)? customersLoaded,
    TResult Function(String message)? actionSuccess,
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
    required TResult Function(_CustomersLoaded value) customersLoaded,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CustomersLoaded value)? customersLoaded,
    TResult? Function(_ActionSuccess value)? actionSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CustomersLoaded value)? customersLoaded,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CustomerCrmState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
