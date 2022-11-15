part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial() = TodoStateInitial;

  const factory TodoState.error() = TodoStateError;

  const factory TodoState.loading() = TodoStateLoading;

  const factory TodoState.success() = TodoStateSuccess;
}
