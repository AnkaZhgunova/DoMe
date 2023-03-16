// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoStateInitial value) initial,
    required TResult Function(TodoStateError value) error,
    required TResult Function(TodoStateLoading value) loading,
    required TResult Function(TodoStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoStateInitial value)? initial,
    TResult? Function(TodoStateError value)? error,
    TResult? Function(TodoStateLoading value)? loading,
    TResult? Function(TodoStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoStateInitial value)? initial,
    TResult Function(TodoStateError value)? error,
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState> implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TodoStateInitialCopyWith<$Res> {
  factory _$$TodoStateInitialCopyWith(
          _$TodoStateInitial value, $Res Function(_$TodoStateInitial) then) =
      __$$TodoStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoStateInitialCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateInitial>
    implements _$$TodoStateInitialCopyWith<$Res> {
  __$$TodoStateInitialCopyWithImpl(
      _$TodoStateInitial _value, $Res Function(_$TodoStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoStateInitial implements TodoStateInitial {
  const _$TodoStateInitial();

  @override
  String toString() {
    return 'TodoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(TodoStateInitial value) initial,
    required TResult Function(TodoStateError value) error,
    required TResult Function(TodoStateLoading value) loading,
    required TResult Function(TodoStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoStateInitial value)? initial,
    TResult? Function(TodoStateError value)? error,
    TResult? Function(TodoStateLoading value)? loading,
    TResult? Function(TodoStateSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoStateInitial value)? initial,
    TResult Function(TodoStateError value)? error,
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TodoStateInitial implements TodoState {
  const factory TodoStateInitial() = _$TodoStateInitial;
}

/// @nodoc
abstract class _$$TodoStateErrorCopyWith<$Res> {
  factory _$$TodoStateErrorCopyWith(_$TodoStateError value, $Res Function(_$TodoStateError) then) =
      __$$TodoStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoStateErrorCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res, _$TodoStateError>
    implements _$$TodoStateErrorCopyWith<$Res> {
  __$$TodoStateErrorCopyWithImpl(_$TodoStateError _value, $Res Function(_$TodoStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoStateError implements TodoStateError {
  const _$TodoStateError();

  @override
  String toString() {
    return 'TodoState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoStateInitial value) initial,
    required TResult Function(TodoStateError value) error,
    required TResult Function(TodoStateLoading value) loading,
    required TResult Function(TodoStateSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoStateInitial value)? initial,
    TResult? Function(TodoStateError value)? error,
    TResult? Function(TodoStateLoading value)? loading,
    TResult? Function(TodoStateSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoStateInitial value)? initial,
    TResult Function(TodoStateError value)? error,
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TodoStateError implements TodoState {
  const factory TodoStateError() = _$TodoStateError;
}

/// @nodoc
abstract class _$$TodoStateLoadingCopyWith<$Res> {
  factory _$$TodoStateLoadingCopyWith(
          _$TodoStateLoading value, $Res Function(_$TodoStateLoading) then) =
      __$$TodoStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoStateLoadingCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateLoading>
    implements _$$TodoStateLoadingCopyWith<$Res> {
  __$$TodoStateLoadingCopyWithImpl(
      _$TodoStateLoading _value, $Res Function(_$TodoStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoStateLoading implements TodoStateLoading {
  const _$TodoStateLoading();

  @override
  String toString() {
    return 'TodoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(TodoStateInitial value) initial,
    required TResult Function(TodoStateError value) error,
    required TResult Function(TodoStateLoading value) loading,
    required TResult Function(TodoStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoStateInitial value)? initial,
    TResult? Function(TodoStateError value)? error,
    TResult? Function(TodoStateLoading value)? loading,
    TResult? Function(TodoStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoStateInitial value)? initial,
    TResult Function(TodoStateError value)? error,
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TodoStateLoading implements TodoState {
  const factory TodoStateLoading() = _$TodoStateLoading;
}

/// @nodoc
abstract class _$$TodoStateSuccessCopyWith<$Res> {
  factory _$$TodoStateSuccessCopyWith(
          _$TodoStateSuccess value, $Res Function(_$TodoStateSuccess) then) =
      __$$TodoStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoStateSuccessCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateSuccess>
    implements _$$TodoStateSuccessCopyWith<$Res> {
  __$$TodoStateSuccessCopyWithImpl(
      _$TodoStateSuccess _value, $Res Function(_$TodoStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoStateSuccess implements TodoStateSuccess {
  const _$TodoStateSuccess();

  @override
  String toString() {
    return 'TodoState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoStateInitial value) initial,
    required TResult Function(TodoStateError value) error,
    required TResult Function(TodoStateLoading value) loading,
    required TResult Function(TodoStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoStateInitial value)? initial,
    TResult? Function(TodoStateError value)? error,
    TResult? Function(TodoStateLoading value)? loading,
    TResult? Function(TodoStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoStateInitial value)? initial,
    TResult Function(TodoStateError value)? error,
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TodoStateSuccess implements TodoState {
  const factory TodoStateSuccess() = _$TodoStateSuccess;
}

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoEventInitial value) initial,
    required TResult Function(TodoEventError value) error,
    required TResult Function(TodoEventLoading value) loading,
    required TResult Function(TodoEventSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoEventInitial value)? initial,
    TResult? Function(TodoEventError value)? error,
    TResult? Function(TodoEventLoading value)? loading,
    TResult? Function(TodoEventSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoEventInitial value)? initial,
    TResult Function(TodoEventError value)? error,
    TResult Function(TodoEventLoading value)? loading,
    TResult Function(TodoEventSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent> implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TodoEventInitialCopyWith<$Res> {
  factory _$$TodoEventInitialCopyWith(
          _$TodoEventInitial value, $Res Function(_$TodoEventInitial) then) =
      __$$TodoEventInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoEventInitialCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoEventInitial>
    implements _$$TodoEventInitialCopyWith<$Res> {
  __$$TodoEventInitialCopyWithImpl(
      _$TodoEventInitial _value, $Res Function(_$TodoEventInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoEventInitial implements TodoEventInitial {
  const _$TodoEventInitial();

  @override
  String toString() {
    return 'TodoEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoEventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(TodoEventInitial value) initial,
    required TResult Function(TodoEventError value) error,
    required TResult Function(TodoEventLoading value) loading,
    required TResult Function(TodoEventSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoEventInitial value)? initial,
    TResult? Function(TodoEventError value)? error,
    TResult? Function(TodoEventLoading value)? loading,
    TResult? Function(TodoEventSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoEventInitial value)? initial,
    TResult Function(TodoEventError value)? error,
    TResult Function(TodoEventLoading value)? loading,
    TResult Function(TodoEventSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TodoEventInitial implements TodoEvent {
  const factory TodoEventInitial() = _$TodoEventInitial;
}

/// @nodoc
abstract class _$$TodoEventErrorCopyWith<$Res> {
  factory _$$TodoEventErrorCopyWith(_$TodoEventError value, $Res Function(_$TodoEventError) then) =
      __$$TodoEventErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoEventErrorCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res, _$TodoEventError>
    implements _$$TodoEventErrorCopyWith<$Res> {
  __$$TodoEventErrorCopyWithImpl(_$TodoEventError _value, $Res Function(_$TodoEventError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoEventError implements TodoEventError {
  const _$TodoEventError();

  @override
  String toString() {
    return 'TodoEvent.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoEventError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoEventInitial value) initial,
    required TResult Function(TodoEventError value) error,
    required TResult Function(TodoEventLoading value) loading,
    required TResult Function(TodoEventSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoEventInitial value)? initial,
    TResult? Function(TodoEventError value)? error,
    TResult? Function(TodoEventLoading value)? loading,
    TResult? Function(TodoEventSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoEventInitial value)? initial,
    TResult Function(TodoEventError value)? error,
    TResult Function(TodoEventLoading value)? loading,
    TResult Function(TodoEventSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TodoEventError implements TodoEvent {
  const factory TodoEventError() = _$TodoEventError;
}

/// @nodoc
abstract class _$$TodoEventLoadingCopyWith<$Res> {
  factory _$$TodoEventLoadingCopyWith(
          _$TodoEventLoading value, $Res Function(_$TodoEventLoading) then) =
      __$$TodoEventLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoEventLoadingCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoEventLoading>
    implements _$$TodoEventLoadingCopyWith<$Res> {
  __$$TodoEventLoadingCopyWithImpl(
      _$TodoEventLoading _value, $Res Function(_$TodoEventLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoEventLoading implements TodoEventLoading {
  const _$TodoEventLoading();

  @override
  String toString() {
    return 'TodoEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoEventLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(TodoEventInitial value) initial,
    required TResult Function(TodoEventError value) error,
    required TResult Function(TodoEventLoading value) loading,
    required TResult Function(TodoEventSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoEventInitial value)? initial,
    TResult? Function(TodoEventError value)? error,
    TResult? Function(TodoEventLoading value)? loading,
    TResult? Function(TodoEventSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoEventInitial value)? initial,
    TResult Function(TodoEventError value)? error,
    TResult Function(TodoEventLoading value)? loading,
    TResult Function(TodoEventSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TodoEventLoading implements TodoEvent {
  const factory TodoEventLoading() = _$TodoEventLoading;
}

/// @nodoc
abstract class _$$TodoEventSuccessCopyWith<$Res> {
  factory _$$TodoEventSuccessCopyWith(
          _$TodoEventSuccess value, $Res Function(_$TodoEventSuccess) then) =
      __$$TodoEventSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoEventSuccessCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoEventSuccess>
    implements _$$TodoEventSuccessCopyWith<$Res> {
  __$$TodoEventSuccessCopyWithImpl(
      _$TodoEventSuccess _value, $Res Function(_$TodoEventSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoEventSuccess implements TodoEventSuccess {
  const _$TodoEventSuccess();

  @override
  String toString() {
    return 'TodoEvent.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoEventSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoEventInitial value) initial,
    required TResult Function(TodoEventError value) error,
    required TResult Function(TodoEventLoading value) loading,
    required TResult Function(TodoEventSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoEventInitial value)? initial,
    TResult? Function(TodoEventError value)? error,
    TResult? Function(TodoEventLoading value)? loading,
    TResult? Function(TodoEventSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoEventInitial value)? initial,
    TResult Function(TodoEventError value)? error,
    TResult Function(TodoEventLoading value)? loading,
    TResult Function(TodoEventSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TodoEventSuccess implements TodoEvent {
  const factory TodoEventSuccess() = _$TodoEventSuccess;
}
