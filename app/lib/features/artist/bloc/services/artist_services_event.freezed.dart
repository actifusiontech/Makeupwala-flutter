// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_services_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArtistServicesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) loadServices,
    required TResult Function(Map<String, dynamic> serviceData) addService,
    required TResult Function(
            String serviceId, Map<String, dynamic> serviceData)
        updateService,
    required TResult Function(String serviceId) deleteService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? loadServices,
    TResult? Function(Map<String, dynamic> serviceData)? addService,
    TResult? Function(String serviceId, Map<String, dynamic> serviceData)?
        updateService,
    TResult? Function(String serviceId)? deleteService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? loadServices,
    TResult Function(Map<String, dynamic> serviceData)? addService,
    TResult Function(String serviceId, Map<String, dynamic> serviceData)?
        updateService,
    TResult Function(String serviceId)? deleteService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadServices value) loadServices,
    required TResult Function(_AddService value) addService,
    required TResult Function(_UpdateService value) updateService,
    required TResult Function(_DeleteService value) deleteService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadServices value)? loadServices,
    TResult? Function(_AddService value)? addService,
    TResult? Function(_UpdateService value)? updateService,
    TResult? Function(_DeleteService value)? deleteService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadServices value)? loadServices,
    TResult Function(_AddService value)? addService,
    TResult Function(_UpdateService value)? updateService,
    TResult Function(_DeleteService value)? deleteService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistServicesEventCopyWith<$Res> {
  factory $ArtistServicesEventCopyWith(
          ArtistServicesEvent value, $Res Function(ArtistServicesEvent) then) =
      _$ArtistServicesEventCopyWithImpl<$Res, ArtistServicesEvent>;
}

/// @nodoc
class _$ArtistServicesEventCopyWithImpl<$Res, $Val extends ArtistServicesEvent>
    implements $ArtistServicesEventCopyWith<$Res> {
  _$ArtistServicesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadServicesImplCopyWith<$Res> {
  factory _$$LoadServicesImplCopyWith(
          _$LoadServicesImpl value, $Res Function(_$LoadServicesImpl) then) =
      __$$LoadServicesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artistId});
}

/// @nodoc
class __$$LoadServicesImplCopyWithImpl<$Res>
    extends _$ArtistServicesEventCopyWithImpl<$Res, _$LoadServicesImpl>
    implements _$$LoadServicesImplCopyWith<$Res> {
  __$$LoadServicesImplCopyWithImpl(
      _$LoadServicesImpl _value, $Res Function(_$LoadServicesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
  }) {
    return _then(_$LoadServicesImpl(
      null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadServicesImpl implements _LoadServices {
  const _$LoadServicesImpl(this.artistId);

  @override
  final String artistId;

  @override
  String toString() {
    return 'ArtistServicesEvent.loadServices(artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadServicesImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadServicesImplCopyWith<_$LoadServicesImpl> get copyWith =>
      __$$LoadServicesImplCopyWithImpl<_$LoadServicesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) loadServices,
    required TResult Function(Map<String, dynamic> serviceData) addService,
    required TResult Function(
            String serviceId, Map<String, dynamic> serviceData)
        updateService,
    required TResult Function(String serviceId) deleteService,
  }) {
    return loadServices(artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? loadServices,
    TResult? Function(Map<String, dynamic> serviceData)? addService,
    TResult? Function(String serviceId, Map<String, dynamic> serviceData)?
        updateService,
    TResult? Function(String serviceId)? deleteService,
  }) {
    return loadServices?.call(artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? loadServices,
    TResult Function(Map<String, dynamic> serviceData)? addService,
    TResult Function(String serviceId, Map<String, dynamic> serviceData)?
        updateService,
    TResult Function(String serviceId)? deleteService,
    required TResult orElse(),
  }) {
    if (loadServices != null) {
      return loadServices(artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadServices value) loadServices,
    required TResult Function(_AddService value) addService,
    required TResult Function(_UpdateService value) updateService,
    required TResult Function(_DeleteService value) deleteService,
  }) {
    return loadServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadServices value)? loadServices,
    TResult? Function(_AddService value)? addService,
    TResult? Function(_UpdateService value)? updateService,
    TResult? Function(_DeleteService value)? deleteService,
  }) {
    return loadServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadServices value)? loadServices,
    TResult Function(_AddService value)? addService,
    TResult Function(_UpdateService value)? updateService,
    TResult Function(_DeleteService value)? deleteService,
    required TResult orElse(),
  }) {
    if (loadServices != null) {
      return loadServices(this);
    }
    return orElse();
  }
}

abstract class _LoadServices implements ArtistServicesEvent {
  const factory _LoadServices(final String artistId) = _$LoadServicesImpl;

  String get artistId;
  @JsonKey(ignore: true)
  _$$LoadServicesImplCopyWith<_$LoadServicesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddServiceImplCopyWith<$Res> {
  factory _$$AddServiceImplCopyWith(
          _$AddServiceImpl value, $Res Function(_$AddServiceImpl) then) =
      __$$AddServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> serviceData});
}

/// @nodoc
class __$$AddServiceImplCopyWithImpl<$Res>
    extends _$ArtistServicesEventCopyWithImpl<$Res, _$AddServiceImpl>
    implements _$$AddServiceImplCopyWith<$Res> {
  __$$AddServiceImplCopyWithImpl(
      _$AddServiceImpl _value, $Res Function(_$AddServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceData = null,
  }) {
    return _then(_$AddServiceImpl(
      null == serviceData
          ? _value._serviceData
          : serviceData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$AddServiceImpl implements _AddService {
  const _$AddServiceImpl(final Map<String, dynamic> serviceData)
      : _serviceData = serviceData;

  final Map<String, dynamic> _serviceData;
  @override
  Map<String, dynamic> get serviceData {
    if (_serviceData is EqualUnmodifiableMapView) return _serviceData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_serviceData);
  }

  @override
  String toString() {
    return 'ArtistServicesEvent.addService(serviceData: $serviceData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddServiceImpl &&
            const DeepCollectionEquality()
                .equals(other._serviceData, _serviceData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_serviceData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddServiceImplCopyWith<_$AddServiceImpl> get copyWith =>
      __$$AddServiceImplCopyWithImpl<_$AddServiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) loadServices,
    required TResult Function(Map<String, dynamic> serviceData) addService,
    required TResult Function(
            String serviceId, Map<String, dynamic> serviceData)
        updateService,
    required TResult Function(String serviceId) deleteService,
  }) {
    return addService(serviceData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? loadServices,
    TResult? Function(Map<String, dynamic> serviceData)? addService,
    TResult? Function(String serviceId, Map<String, dynamic> serviceData)?
        updateService,
    TResult? Function(String serviceId)? deleteService,
  }) {
    return addService?.call(serviceData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? loadServices,
    TResult Function(Map<String, dynamic> serviceData)? addService,
    TResult Function(String serviceId, Map<String, dynamic> serviceData)?
        updateService,
    TResult Function(String serviceId)? deleteService,
    required TResult orElse(),
  }) {
    if (addService != null) {
      return addService(serviceData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadServices value) loadServices,
    required TResult Function(_AddService value) addService,
    required TResult Function(_UpdateService value) updateService,
    required TResult Function(_DeleteService value) deleteService,
  }) {
    return addService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadServices value)? loadServices,
    TResult? Function(_AddService value)? addService,
    TResult? Function(_UpdateService value)? updateService,
    TResult? Function(_DeleteService value)? deleteService,
  }) {
    return addService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadServices value)? loadServices,
    TResult Function(_AddService value)? addService,
    TResult Function(_UpdateService value)? updateService,
    TResult Function(_DeleteService value)? deleteService,
    required TResult orElse(),
  }) {
    if (addService != null) {
      return addService(this);
    }
    return orElse();
  }
}

abstract class _AddService implements ArtistServicesEvent {
  const factory _AddService(final Map<String, dynamic> serviceData) =
      _$AddServiceImpl;

  Map<String, dynamic> get serviceData;
  @JsonKey(ignore: true)
  _$$AddServiceImplCopyWith<_$AddServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateServiceImplCopyWith<$Res> {
  factory _$$UpdateServiceImplCopyWith(
          _$UpdateServiceImpl value, $Res Function(_$UpdateServiceImpl) then) =
      __$$UpdateServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String serviceId, Map<String, dynamic> serviceData});
}

/// @nodoc
class __$$UpdateServiceImplCopyWithImpl<$Res>
    extends _$ArtistServicesEventCopyWithImpl<$Res, _$UpdateServiceImpl>
    implements _$$UpdateServiceImplCopyWith<$Res> {
  __$$UpdateServiceImplCopyWithImpl(
      _$UpdateServiceImpl _value, $Res Function(_$UpdateServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceId = null,
    Object? serviceData = null,
  }) {
    return _then(_$UpdateServiceImpl(
      null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      null == serviceData
          ? _value._serviceData
          : serviceData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$UpdateServiceImpl implements _UpdateService {
  const _$UpdateServiceImpl(
      this.serviceId, final Map<String, dynamic> serviceData)
      : _serviceData = serviceData;

  @override
  final String serviceId;
  final Map<String, dynamic> _serviceData;
  @override
  Map<String, dynamic> get serviceData {
    if (_serviceData is EqualUnmodifiableMapView) return _serviceData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_serviceData);
  }

  @override
  String toString() {
    return 'ArtistServicesEvent.updateService(serviceId: $serviceId, serviceData: $serviceData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateServiceImpl &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            const DeepCollectionEquality()
                .equals(other._serviceData, _serviceData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serviceId,
      const DeepCollectionEquality().hash(_serviceData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateServiceImplCopyWith<_$UpdateServiceImpl> get copyWith =>
      __$$UpdateServiceImplCopyWithImpl<_$UpdateServiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) loadServices,
    required TResult Function(Map<String, dynamic> serviceData) addService,
    required TResult Function(
            String serviceId, Map<String, dynamic> serviceData)
        updateService,
    required TResult Function(String serviceId) deleteService,
  }) {
    return updateService(serviceId, serviceData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? loadServices,
    TResult? Function(Map<String, dynamic> serviceData)? addService,
    TResult? Function(String serviceId, Map<String, dynamic> serviceData)?
        updateService,
    TResult? Function(String serviceId)? deleteService,
  }) {
    return updateService?.call(serviceId, serviceData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? loadServices,
    TResult Function(Map<String, dynamic> serviceData)? addService,
    TResult Function(String serviceId, Map<String, dynamic> serviceData)?
        updateService,
    TResult Function(String serviceId)? deleteService,
    required TResult orElse(),
  }) {
    if (updateService != null) {
      return updateService(serviceId, serviceData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadServices value) loadServices,
    required TResult Function(_AddService value) addService,
    required TResult Function(_UpdateService value) updateService,
    required TResult Function(_DeleteService value) deleteService,
  }) {
    return updateService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadServices value)? loadServices,
    TResult? Function(_AddService value)? addService,
    TResult? Function(_UpdateService value)? updateService,
    TResult? Function(_DeleteService value)? deleteService,
  }) {
    return updateService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadServices value)? loadServices,
    TResult Function(_AddService value)? addService,
    TResult Function(_UpdateService value)? updateService,
    TResult Function(_DeleteService value)? deleteService,
    required TResult orElse(),
  }) {
    if (updateService != null) {
      return updateService(this);
    }
    return orElse();
  }
}

abstract class _UpdateService implements ArtistServicesEvent {
  const factory _UpdateService(
          final String serviceId, final Map<String, dynamic> serviceData) =
      _$UpdateServiceImpl;

  String get serviceId;
  Map<String, dynamic> get serviceData;
  @JsonKey(ignore: true)
  _$$UpdateServiceImplCopyWith<_$UpdateServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteServiceImplCopyWith<$Res> {
  factory _$$DeleteServiceImplCopyWith(
          _$DeleteServiceImpl value, $Res Function(_$DeleteServiceImpl) then) =
      __$$DeleteServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String serviceId});
}

/// @nodoc
class __$$DeleteServiceImplCopyWithImpl<$Res>
    extends _$ArtistServicesEventCopyWithImpl<$Res, _$DeleteServiceImpl>
    implements _$$DeleteServiceImplCopyWith<$Res> {
  __$$DeleteServiceImplCopyWithImpl(
      _$DeleteServiceImpl _value, $Res Function(_$DeleteServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceId = null,
  }) {
    return _then(_$DeleteServiceImpl(
      null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteServiceImpl implements _DeleteService {
  const _$DeleteServiceImpl(this.serviceId);

  @override
  final String serviceId;

  @override
  String toString() {
    return 'ArtistServicesEvent.deleteService(serviceId: $serviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteServiceImpl &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteServiceImplCopyWith<_$DeleteServiceImpl> get copyWith =>
      __$$DeleteServiceImplCopyWithImpl<_$DeleteServiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) loadServices,
    required TResult Function(Map<String, dynamic> serviceData) addService,
    required TResult Function(
            String serviceId, Map<String, dynamic> serviceData)
        updateService,
    required TResult Function(String serviceId) deleteService,
  }) {
    return deleteService(serviceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? loadServices,
    TResult? Function(Map<String, dynamic> serviceData)? addService,
    TResult? Function(String serviceId, Map<String, dynamic> serviceData)?
        updateService,
    TResult? Function(String serviceId)? deleteService,
  }) {
    return deleteService?.call(serviceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? loadServices,
    TResult Function(Map<String, dynamic> serviceData)? addService,
    TResult Function(String serviceId, Map<String, dynamic> serviceData)?
        updateService,
    TResult Function(String serviceId)? deleteService,
    required TResult orElse(),
  }) {
    if (deleteService != null) {
      return deleteService(serviceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadServices value) loadServices,
    required TResult Function(_AddService value) addService,
    required TResult Function(_UpdateService value) updateService,
    required TResult Function(_DeleteService value) deleteService,
  }) {
    return deleteService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadServices value)? loadServices,
    TResult? Function(_AddService value)? addService,
    TResult? Function(_UpdateService value)? updateService,
    TResult? Function(_DeleteService value)? deleteService,
  }) {
    return deleteService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadServices value)? loadServices,
    TResult Function(_AddService value)? addService,
    TResult Function(_UpdateService value)? updateService,
    TResult Function(_DeleteService value)? deleteService,
    required TResult orElse(),
  }) {
    if (deleteService != null) {
      return deleteService(this);
    }
    return orElse();
  }
}

abstract class _DeleteService implements ArtistServicesEvent {
  const factory _DeleteService(final String serviceId) = _$DeleteServiceImpl;

  String get serviceId;
  @JsonKey(ignore: true)
  _$$DeleteServiceImplCopyWith<_$DeleteServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
