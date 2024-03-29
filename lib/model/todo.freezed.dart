// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Todo _$TodoFromJson(Map<String, dynamic> json) {
  return _Todo.fromJson(json);
}

/// @nodoc
mixin _$Todo {
  DateTime get createAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) = _$TodoCopyWithImpl<$Res, Todo>;
  @useResult
  $Res call({DateTime createAt, String title, bool isDone, String? id, String? description});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res, $Val extends Todo> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createAt = null,
    Object? title = null,
    Object? isDone = null,
    Object? id = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$$_TodoCopyWith(_$_Todo value, $Res Function(_$_Todo) then) =
      __$$_TodoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime createAt, String title, bool isDone, String? id, String? description});
}

/// @nodoc
class __$$_TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res, _$_Todo>
    implements _$$_TodoCopyWith<$Res> {
  __$$_TodoCopyWithImpl(_$_Todo _value, $Res Function(_$_Todo) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createAt = null,
    Object? title = null,
    Object? isDone = null,
    Object? id = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Todo(
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Todo implements _Todo {
  const _$_Todo(
      {required this.createAt,
      required this.title,
      required this.isDone,
      this.id,
      this.description});

  factory _$_Todo.fromJson(Map<String, dynamic> json) => _$$_TodoFromJson(json);

  @override
  final DateTime createAt;
  @override
  final String title;
  @override
  final bool isDone;
  @override
  final String? id;
  @override
  final String? description;

  @override
  String toString() {
    return 'Todo(createAt: $createAt, title: $title, isDone: $isDone, id: $id, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Todo &&
            (identical(other.createAt, createAt) || other.createAt == createAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) || other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createAt, title, isDone, id, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoCopyWith<_$_Todo> get copyWith => __$$_TodoCopyWithImpl<_$_Todo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoToJson(
      this,
    );
  }
}

abstract class _Todo implements Todo {
  const factory _Todo(
      {required final DateTime createAt,
      required final String title,
      required final bool isDone,
      final String? id,
      final String? description}) = _$_Todo;

  factory _Todo.fromJson(Map<String, dynamic> json) = _$_Todo.fromJson;

  @override
  DateTime get createAt;
  @override
  String get title;
  @override
  bool get isDone;
  @override
  String? get id;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_TodoCopyWith<_$_Todo> get copyWith => throw _privateConstructorUsedError;
}
