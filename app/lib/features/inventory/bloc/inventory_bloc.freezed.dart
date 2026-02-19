// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InventoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInventory,
    required TResult Function(InventoryItem item) addItem,
    required TResult Function(InventoryItem item) updateItem,
    required TResult Function(String id) deleteItem,
    required TResult Function(String id, double amount) logUsage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInventory,
    TResult? Function(InventoryItem item)? addItem,
    TResult? Function(InventoryItem item)? updateItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function(String id, double amount)? logUsage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInventory,
    TResult Function(InventoryItem item)? addItem,
    TResult Function(InventoryItem item)? updateItem,
    TResult Function(String id)? deleteItem,
    TResult Function(String id, double amount)? logUsage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInventory value) loadInventory,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_LogUsage value) logUsage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInventory value)? loadInventory,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_LogUsage value)? logUsage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInventory value)? loadInventory,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_LogUsage value)? logUsage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryEventCopyWith<$Res> {
  factory $InventoryEventCopyWith(
          InventoryEvent value, $Res Function(InventoryEvent) then) =
      _$InventoryEventCopyWithImpl<$Res, InventoryEvent>;
}

/// @nodoc
class _$InventoryEventCopyWithImpl<$Res, $Val extends InventoryEvent>
    implements $InventoryEventCopyWith<$Res> {
  _$InventoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadInventoryImplCopyWith<$Res> {
  factory _$$LoadInventoryImplCopyWith(
          _$LoadInventoryImpl value, $Res Function(_$LoadInventoryImpl) then) =
      __$$LoadInventoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInventoryImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$LoadInventoryImpl>
    implements _$$LoadInventoryImplCopyWith<$Res> {
  __$$LoadInventoryImplCopyWithImpl(
      _$LoadInventoryImpl _value, $Res Function(_$LoadInventoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadInventoryImpl implements _LoadInventory {
  const _$LoadInventoryImpl();

  @override
  String toString() {
    return 'InventoryEvent.loadInventory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInventoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInventory,
    required TResult Function(InventoryItem item) addItem,
    required TResult Function(InventoryItem item) updateItem,
    required TResult Function(String id) deleteItem,
    required TResult Function(String id, double amount) logUsage,
  }) {
    return loadInventory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInventory,
    TResult? Function(InventoryItem item)? addItem,
    TResult? Function(InventoryItem item)? updateItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function(String id, double amount)? logUsage,
  }) {
    return loadInventory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInventory,
    TResult Function(InventoryItem item)? addItem,
    TResult Function(InventoryItem item)? updateItem,
    TResult Function(String id)? deleteItem,
    TResult Function(String id, double amount)? logUsage,
    required TResult orElse(),
  }) {
    if (loadInventory != null) {
      return loadInventory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInventory value) loadInventory,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_LogUsage value) logUsage,
  }) {
    return loadInventory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInventory value)? loadInventory,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_LogUsage value)? logUsage,
  }) {
    return loadInventory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInventory value)? loadInventory,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_LogUsage value)? logUsage,
    required TResult orElse(),
  }) {
    if (loadInventory != null) {
      return loadInventory(this);
    }
    return orElse();
  }
}

abstract class _LoadInventory implements InventoryEvent {
  const factory _LoadInventory() = _$LoadInventoryImpl;
}

/// @nodoc
abstract class _$$AddItemImplCopyWith<$Res> {
  factory _$$AddItemImplCopyWith(
          _$AddItemImpl value, $Res Function(_$AddItemImpl) then) =
      __$$AddItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InventoryItem item});
}

/// @nodoc
class __$$AddItemImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$AddItemImpl>
    implements _$$AddItemImplCopyWith<$Res> {
  __$$AddItemImplCopyWithImpl(
      _$AddItemImpl _value, $Res Function(_$AddItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$AddItemImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as InventoryItem,
    ));
  }
}

/// @nodoc

class _$AddItemImpl implements _AddItem {
  const _$AddItemImpl(this.item);

  @override
  final InventoryItem item;

  @override
  String toString() {
    return 'InventoryEvent.addItem(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      __$$AddItemImplCopyWithImpl<_$AddItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInventory,
    required TResult Function(InventoryItem item) addItem,
    required TResult Function(InventoryItem item) updateItem,
    required TResult Function(String id) deleteItem,
    required TResult Function(String id, double amount) logUsage,
  }) {
    return addItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInventory,
    TResult? Function(InventoryItem item)? addItem,
    TResult? Function(InventoryItem item)? updateItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function(String id, double amount)? logUsage,
  }) {
    return addItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInventory,
    TResult Function(InventoryItem item)? addItem,
    TResult Function(InventoryItem item)? updateItem,
    TResult Function(String id)? deleteItem,
    TResult Function(String id, double amount)? logUsage,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInventory value) loadInventory,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_LogUsage value) logUsage,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInventory value)? loadInventory,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_LogUsage value)? logUsage,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInventory value)? loadInventory,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_LogUsage value)? logUsage,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class _AddItem implements InventoryEvent {
  const factory _AddItem(final InventoryItem item) = _$AddItemImpl;

  InventoryItem get item;
  @JsonKey(ignore: true)
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateItemImplCopyWith<$Res> {
  factory _$$UpdateItemImplCopyWith(
          _$UpdateItemImpl value, $Res Function(_$UpdateItemImpl) then) =
      __$$UpdateItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InventoryItem item});
}

/// @nodoc
class __$$UpdateItemImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$UpdateItemImpl>
    implements _$$UpdateItemImplCopyWith<$Res> {
  __$$UpdateItemImplCopyWithImpl(
      _$UpdateItemImpl _value, $Res Function(_$UpdateItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$UpdateItemImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as InventoryItem,
    ));
  }
}

/// @nodoc

class _$UpdateItemImpl implements _UpdateItem {
  const _$UpdateItemImpl(this.item);

  @override
  final InventoryItem item;

  @override
  String toString() {
    return 'InventoryEvent.updateItem(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateItemImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateItemImplCopyWith<_$UpdateItemImpl> get copyWith =>
      __$$UpdateItemImplCopyWithImpl<_$UpdateItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInventory,
    required TResult Function(InventoryItem item) addItem,
    required TResult Function(InventoryItem item) updateItem,
    required TResult Function(String id) deleteItem,
    required TResult Function(String id, double amount) logUsage,
  }) {
    return updateItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInventory,
    TResult? Function(InventoryItem item)? addItem,
    TResult? Function(InventoryItem item)? updateItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function(String id, double amount)? logUsage,
  }) {
    return updateItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInventory,
    TResult Function(InventoryItem item)? addItem,
    TResult Function(InventoryItem item)? updateItem,
    TResult Function(String id)? deleteItem,
    TResult Function(String id, double amount)? logUsage,
    required TResult orElse(),
  }) {
    if (updateItem != null) {
      return updateItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInventory value) loadInventory,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_LogUsage value) logUsage,
  }) {
    return updateItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInventory value)? loadInventory,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_LogUsage value)? logUsage,
  }) {
    return updateItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInventory value)? loadInventory,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_LogUsage value)? logUsage,
    required TResult orElse(),
  }) {
    if (updateItem != null) {
      return updateItem(this);
    }
    return orElse();
  }
}

abstract class _UpdateItem implements InventoryEvent {
  const factory _UpdateItem(final InventoryItem item) = _$UpdateItemImpl;

  InventoryItem get item;
  @JsonKey(ignore: true)
  _$$UpdateItemImplCopyWith<_$UpdateItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteItemImplCopyWith<$Res> {
  factory _$$DeleteItemImplCopyWith(
          _$DeleteItemImpl value, $Res Function(_$DeleteItemImpl) then) =
      __$$DeleteItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteItemImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$DeleteItemImpl>
    implements _$$DeleteItemImplCopyWith<$Res> {
  __$$DeleteItemImplCopyWithImpl(
      _$DeleteItemImpl _value, $Res Function(_$DeleteItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteItemImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteItemImpl implements _DeleteItem {
  const _$DeleteItemImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'InventoryEvent.deleteItem(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteItemImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteItemImplCopyWith<_$DeleteItemImpl> get copyWith =>
      __$$DeleteItemImplCopyWithImpl<_$DeleteItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInventory,
    required TResult Function(InventoryItem item) addItem,
    required TResult Function(InventoryItem item) updateItem,
    required TResult Function(String id) deleteItem,
    required TResult Function(String id, double amount) logUsage,
  }) {
    return deleteItem(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInventory,
    TResult? Function(InventoryItem item)? addItem,
    TResult? Function(InventoryItem item)? updateItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function(String id, double amount)? logUsage,
  }) {
    return deleteItem?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInventory,
    TResult Function(InventoryItem item)? addItem,
    TResult Function(InventoryItem item)? updateItem,
    TResult Function(String id)? deleteItem,
    TResult Function(String id, double amount)? logUsage,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInventory value) loadInventory,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_LogUsage value) logUsage,
  }) {
    return deleteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInventory value)? loadInventory,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_LogUsage value)? logUsage,
  }) {
    return deleteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInventory value)? loadInventory,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_LogUsage value)? logUsage,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(this);
    }
    return orElse();
  }
}

abstract class _DeleteItem implements InventoryEvent {
  const factory _DeleteItem(final String id) = _$DeleteItemImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteItemImplCopyWith<_$DeleteItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogUsageImplCopyWith<$Res> {
  factory _$$LogUsageImplCopyWith(
          _$LogUsageImpl value, $Res Function(_$LogUsageImpl) then) =
      __$$LogUsageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, double amount});
}

/// @nodoc
class __$$LogUsageImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$LogUsageImpl>
    implements _$$LogUsageImplCopyWith<$Res> {
  __$$LogUsageImplCopyWithImpl(
      _$LogUsageImpl _value, $Res Function(_$LogUsageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
  }) {
    return _then(_$LogUsageImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$LogUsageImpl implements _LogUsage {
  const _$LogUsageImpl(this.id, this.amount);

  @override
  final String id;
  @override
  final double amount;

  @override
  String toString() {
    return 'InventoryEvent.logUsage(id: $id, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogUsageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogUsageImplCopyWith<_$LogUsageImpl> get copyWith =>
      __$$LogUsageImplCopyWithImpl<_$LogUsageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInventory,
    required TResult Function(InventoryItem item) addItem,
    required TResult Function(InventoryItem item) updateItem,
    required TResult Function(String id) deleteItem,
    required TResult Function(String id, double amount) logUsage,
  }) {
    return logUsage(id, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInventory,
    TResult? Function(InventoryItem item)? addItem,
    TResult? Function(InventoryItem item)? updateItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function(String id, double amount)? logUsage,
  }) {
    return logUsage?.call(id, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInventory,
    TResult Function(InventoryItem item)? addItem,
    TResult Function(InventoryItem item)? updateItem,
    TResult Function(String id)? deleteItem,
    TResult Function(String id, double amount)? logUsage,
    required TResult orElse(),
  }) {
    if (logUsage != null) {
      return logUsage(id, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInventory value) loadInventory,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_DeleteItem value) deleteItem,
    required TResult Function(_LogUsage value) logUsage,
  }) {
    return logUsage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInventory value)? loadInventory,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_DeleteItem value)? deleteItem,
    TResult? Function(_LogUsage value)? logUsage,
  }) {
    return logUsage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInventory value)? loadInventory,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_DeleteItem value)? deleteItem,
    TResult Function(_LogUsage value)? logUsage,
    required TResult orElse(),
  }) {
    if (logUsage != null) {
      return logUsage(this);
    }
    return orElse();
  }
}

abstract class _LogUsage implements InventoryEvent {
  const factory _LogUsage(final String id, final double amount) =
      _$LogUsageImpl;

  String get id;
  double get amount;
  @JsonKey(ignore: true)
  _$$LogUsageImplCopyWith<_$LogUsageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InventoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<InventoryItem> items) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<InventoryItem> items)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<InventoryItem> items)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryStateCopyWith<$Res> {
  factory $InventoryStateCopyWith(
          InventoryState value, $Res Function(InventoryState) then) =
      _$InventoryStateCopyWithImpl<$Res, InventoryState>;
}

/// @nodoc
class _$InventoryStateCopyWithImpl<$Res, $Val extends InventoryState>
    implements $InventoryStateCopyWith<$Res> {
  _$InventoryStateCopyWithImpl(this._value, this._then);

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
    extends _$InventoryStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'InventoryState.initial()';
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
    required TResult Function(List<InventoryItem> items) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<InventoryItem> items)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<InventoryItem> items)? loaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements InventoryState {
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
    extends _$InventoryStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'InventoryState.loading()';
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
    required TResult Function(List<InventoryItem> items) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<InventoryItem> items)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<InventoryItem> items)? loaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements InventoryState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InventoryItem> items});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$InventoryStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$LoadedImpl(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InventoryItem>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<InventoryItem> items) : _items = items;

  final List<InventoryItem> _items;
  @override
  List<InventoryItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'InventoryState.loaded(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<InventoryItem> items) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<InventoryItem> items)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<InventoryItem> items)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements InventoryState {
  const factory _Loaded(final List<InventoryItem> items) = _$LoadedImpl;

  List<InventoryItem> get items;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
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
    extends _$InventoryStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'InventoryState.error(message: $message)';
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
    required TResult Function(List<InventoryItem> items) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<InventoryItem> items)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<InventoryItem> items)? loaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements InventoryState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
