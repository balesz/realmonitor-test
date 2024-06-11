// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poli_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PoliListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<PoliListItemState> items) $default, {
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<PoliListItemState> items)? $default, {
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<PoliListItemState> items)? $default, {
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PoliListLoadedState value) $default, {
    required TResult Function(PoliListErrorState value) error,
    required TResult Function(PoliListLoadingState value) loading,
    required TResult Function(PoliListEmptyState value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PoliListLoadedState value)? $default, {
    TResult? Function(PoliListErrorState value)? error,
    TResult? Function(PoliListLoadingState value)? loading,
    TResult? Function(PoliListEmptyState value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PoliListLoadedState value)? $default, {
    TResult Function(PoliListErrorState value)? error,
    TResult Function(PoliListLoadingState value)? loading,
    TResult Function(PoliListEmptyState value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoliListStateCopyWith<$Res> {
  factory $PoliListStateCopyWith(
          PoliListState value, $Res Function(PoliListState) then) =
      _$PoliListStateCopyWithImpl<$Res, PoliListState>;
}

/// @nodoc
class _$PoliListStateCopyWithImpl<$Res, $Val extends PoliListState>
    implements $PoliListStateCopyWith<$Res> {
  _$PoliListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PoliListErrorStateImplCopyWith<$Res> {
  factory _$$PoliListErrorStateImplCopyWith(_$PoliListErrorStateImpl value,
          $Res Function(_$PoliListErrorStateImpl) then) =
      __$$PoliListErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PoliListErrorStateImplCopyWithImpl<$Res>
    extends _$PoliListStateCopyWithImpl<$Res, _$PoliListErrorStateImpl>
    implements _$$PoliListErrorStateImplCopyWith<$Res> {
  __$$PoliListErrorStateImplCopyWithImpl(_$PoliListErrorStateImpl _value,
      $Res Function(_$PoliListErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PoliListErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PoliListErrorStateImpl implements PoliListErrorState {
  const _$PoliListErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PoliListState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoliListErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoliListErrorStateImplCopyWith<_$PoliListErrorStateImpl> get copyWith =>
      __$$PoliListErrorStateImplCopyWithImpl<_$PoliListErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<PoliListItemState> items) $default, {
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() empty,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<PoliListItemState> items)? $default, {
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? empty,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<PoliListItemState> items)? $default, {
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PoliListLoadedState value) $default, {
    required TResult Function(PoliListErrorState value) error,
    required TResult Function(PoliListLoadingState value) loading,
    required TResult Function(PoliListEmptyState value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PoliListLoadedState value)? $default, {
    TResult? Function(PoliListErrorState value)? error,
    TResult? Function(PoliListLoadingState value)? loading,
    TResult? Function(PoliListEmptyState value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PoliListLoadedState value)? $default, {
    TResult Function(PoliListErrorState value)? error,
    TResult Function(PoliListLoadingState value)? loading,
    TResult Function(PoliListEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PoliListErrorState implements PoliListState {
  const factory PoliListErrorState(final String message) =
      _$PoliListErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$PoliListErrorStateImplCopyWith<_$PoliListErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PoliListLoadingStateImplCopyWith<$Res> {
  factory _$$PoliListLoadingStateImplCopyWith(_$PoliListLoadingStateImpl value,
          $Res Function(_$PoliListLoadingStateImpl) then) =
      __$$PoliListLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PoliListLoadingStateImplCopyWithImpl<$Res>
    extends _$PoliListStateCopyWithImpl<$Res, _$PoliListLoadingStateImpl>
    implements _$$PoliListLoadingStateImplCopyWith<$Res> {
  __$$PoliListLoadingStateImplCopyWithImpl(_$PoliListLoadingStateImpl _value,
      $Res Function(_$PoliListLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PoliListLoadingStateImpl implements PoliListLoadingState {
  const _$PoliListLoadingStateImpl();

  @override
  String toString() {
    return 'PoliListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoliListLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<PoliListItemState> items) $default, {
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<PoliListItemState> items)? $default, {
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<PoliListItemState> items)? $default, {
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PoliListLoadedState value) $default, {
    required TResult Function(PoliListErrorState value) error,
    required TResult Function(PoliListLoadingState value) loading,
    required TResult Function(PoliListEmptyState value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PoliListLoadedState value)? $default, {
    TResult? Function(PoliListErrorState value)? error,
    TResult? Function(PoliListLoadingState value)? loading,
    TResult? Function(PoliListEmptyState value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PoliListLoadedState value)? $default, {
    TResult Function(PoliListErrorState value)? error,
    TResult Function(PoliListLoadingState value)? loading,
    TResult Function(PoliListEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PoliListLoadingState implements PoliListState {
  const factory PoliListLoadingState() = _$PoliListLoadingStateImpl;
}

/// @nodoc
abstract class _$$PoliListEmptyStateImplCopyWith<$Res> {
  factory _$$PoliListEmptyStateImplCopyWith(_$PoliListEmptyStateImpl value,
          $Res Function(_$PoliListEmptyStateImpl) then) =
      __$$PoliListEmptyStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PoliListEmptyStateImplCopyWithImpl<$Res>
    extends _$PoliListStateCopyWithImpl<$Res, _$PoliListEmptyStateImpl>
    implements _$$PoliListEmptyStateImplCopyWith<$Res> {
  __$$PoliListEmptyStateImplCopyWithImpl(_$PoliListEmptyStateImpl _value,
      $Res Function(_$PoliListEmptyStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PoliListEmptyStateImpl implements PoliListEmptyState {
  const _$PoliListEmptyStateImpl();

  @override
  String toString() {
    return 'PoliListState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PoliListEmptyStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<PoliListItemState> items) $default, {
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<PoliListItemState> items)? $default, {
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<PoliListItemState> items)? $default, {
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PoliListLoadedState value) $default, {
    required TResult Function(PoliListErrorState value) error,
    required TResult Function(PoliListLoadingState value) loading,
    required TResult Function(PoliListEmptyState value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PoliListLoadedState value)? $default, {
    TResult? Function(PoliListErrorState value)? error,
    TResult? Function(PoliListLoadingState value)? loading,
    TResult? Function(PoliListEmptyState value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PoliListLoadedState value)? $default, {
    TResult Function(PoliListErrorState value)? error,
    TResult Function(PoliListLoadingState value)? loading,
    TResult Function(PoliListEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class PoliListEmptyState implements PoliListState {
  const factory PoliListEmptyState() = _$PoliListEmptyStateImpl;
}

/// @nodoc
abstract class _$$PoliListLoadedStateImplCopyWith<$Res> {
  factory _$$PoliListLoadedStateImplCopyWith(_$PoliListLoadedStateImpl value,
          $Res Function(_$PoliListLoadedStateImpl) then) =
      __$$PoliListLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PoliListItemState> items});
}

/// @nodoc
class __$$PoliListLoadedStateImplCopyWithImpl<$Res>
    extends _$PoliListStateCopyWithImpl<$Res, _$PoliListLoadedStateImpl>
    implements _$$PoliListLoadedStateImplCopyWith<$Res> {
  __$$PoliListLoadedStateImplCopyWithImpl(_$PoliListLoadedStateImpl _value,
      $Res Function(_$PoliListLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$PoliListLoadedStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PoliListItemState>,
    ));
  }
}

/// @nodoc

class _$PoliListLoadedStateImpl implements PoliListLoadedState {
  const _$PoliListLoadedStateImpl(
      {final List<PoliListItemState> items = const []})
      : _items = items;

  final List<PoliListItemState> _items;
  @override
  @JsonKey()
  List<PoliListItemState> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'PoliListState(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoliListLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoliListLoadedStateImplCopyWith<_$PoliListLoadedStateImpl> get copyWith =>
      __$$PoliListLoadedStateImplCopyWithImpl<_$PoliListLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<PoliListItemState> items) $default, {
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() empty,
  }) {
    return $default(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<PoliListItemState> items)? $default, {
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? empty,
  }) {
    return $default?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<PoliListItemState> items)? $default, {
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PoliListLoadedState value) $default, {
    required TResult Function(PoliListErrorState value) error,
    required TResult Function(PoliListLoadingState value) loading,
    required TResult Function(PoliListEmptyState value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PoliListLoadedState value)? $default, {
    TResult? Function(PoliListErrorState value)? error,
    TResult? Function(PoliListLoadingState value)? loading,
    TResult? Function(PoliListEmptyState value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PoliListLoadedState value)? $default, {
    TResult Function(PoliListErrorState value)? error,
    TResult Function(PoliListLoadingState value)? loading,
    TResult Function(PoliListEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class PoliListLoadedState implements PoliListState {
  const factory PoliListLoadedState({final List<PoliListItemState> items}) =
      _$PoliListLoadedStateImpl;

  List<PoliListItemState> get items;
  @JsonKey(ignore: true)
  _$$PoliListLoadedStateImplCopyWith<_$PoliListLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PoliListItemState {
  String get id => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String get lastModified => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PoliListItemStateCopyWith<PoliListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoliListItemStateCopyWith<$Res> {
  factory $PoliListItemStateCopyWith(
          PoliListItemState value, $Res Function(PoliListItemState) then) =
      _$PoliListItemStateCopyWithImpl<$Res, PoliListItemState>;
  @useResult
  $Res call(
      {String id,
      String price,
      String size,
      String lastModified,
      List<String> images});
}

/// @nodoc
class _$PoliListItemStateCopyWithImpl<$Res, $Val extends PoliListItemState>
    implements $PoliListItemStateCopyWith<$Res> {
  _$PoliListItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? size = null,
    Object? lastModified = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PoliListItemStateImplCopyWith<$Res>
    implements $PoliListItemStateCopyWith<$Res> {
  factory _$$PoliListItemStateImplCopyWith(_$PoliListItemStateImpl value,
          $Res Function(_$PoliListItemStateImpl) then) =
      __$$PoliListItemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String price,
      String size,
      String lastModified,
      List<String> images});
}

/// @nodoc
class __$$PoliListItemStateImplCopyWithImpl<$Res>
    extends _$PoliListItemStateCopyWithImpl<$Res, _$PoliListItemStateImpl>
    implements _$$PoliListItemStateImplCopyWith<$Res> {
  __$$PoliListItemStateImplCopyWithImpl(_$PoliListItemStateImpl _value,
      $Res Function(_$PoliListItemStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? size = null,
    Object? lastModified = null,
    Object? images = null,
  }) {
    return _then(_$PoliListItemStateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$PoliListItemStateImpl implements _PoliListItemState {
  const _$PoliListItemStateImpl(
      {required this.id,
      this.price = "",
      this.size = "",
      this.lastModified = "",
      final List<String> images = const []})
      : _images = images;

  @override
  final String id;
  @override
  @JsonKey()
  final String price;
  @override
  @JsonKey()
  final String size;
  @override
  @JsonKey()
  final String lastModified;
  final List<String> _images;
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'PoliListItemState(id: $id, price: $price, size: $size, lastModified: $lastModified, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoliListItemStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, price, size, lastModified,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoliListItemStateImplCopyWith<_$PoliListItemStateImpl> get copyWith =>
      __$$PoliListItemStateImplCopyWithImpl<_$PoliListItemStateImpl>(
          this, _$identity);
}

abstract class _PoliListItemState implements PoliListItemState {
  const factory _PoliListItemState(
      {required final String id,
      final String price,
      final String size,
      final String lastModified,
      final List<String> images}) = _$PoliListItemStateImpl;

  @override
  String get id;
  @override
  String get price;
  @override
  String get size;
  @override
  String get lastModified;
  @override
  List<String> get images;
  @override
  @JsonKey(ignore: true)
  _$$PoliListItemStateImplCopyWith<_$PoliListItemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
