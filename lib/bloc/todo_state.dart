part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.initial() = TodoEventInitial;

  const factory TodoEvent.error() = TodoEventError;

  const factory TodoEvent.loading() = TodoEventLoading;

  const factory TodoEvent.success() = TodoEventSuccess;
}
