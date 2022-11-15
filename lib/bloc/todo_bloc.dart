import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/api/firebase_api.dart';
import 'package:todo_app/model/todo.dart';

part 'todo_bloc.freezed.dart';
part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final FirebaseApi _firebaseApi;
  List<Todo> _todos = [];
  Todo todo = Todo(
    createAt: DateTime.now(),
    title: '',
    isDone: false,
  );
  TodoBloc(this._firebaseApi) : super(const TodoState.initial()) {
    on<TodoEvent>(
      (event, emit) {
        event.map(
          initial: (_) {
            emit(const TodoState.initial());
          },
          success: (_) {
            emit(const TodoState.success());
          },
          loading: (_) {
            emit(const TodoState.loading());
          },
          error: (_) {
            emit(const TodoState.error());
          },
        );
      },
    );
  }

  Future<void> removeTodo(Todo localTodo) async {
    try {
      await _firebaseApi.deleteTodo(localTodo);
    } on FirebaseException {
      add(const TodoEvent.error());
    }
  }

  Future<void> toggleTodoStatus({
    required bool isCompleted,
    required Todo localTodo,
  }) async {
    todo = localTodo.copyWith(isDone: isCompleted);
    add(TodoEvent.loading());
    try {
      await _firebaseApi.updateTodo(todo);
    } on FirebaseException {
      add(const TodoEvent.error());
    }
  }

  void setTodos(List<Todo> todos) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        _todos = todos;
      },
    );
  }

  List<Todo> get listTodos {
    return _todos.where((todo) => !todo.isDone).toList();
  }

  List<Todo> get todosCompleted {
    return _todos.where((todo) => todo.isDone).toList();
  }

  Future<void> submit({
    required String title,
    required String description,
  }) async {
    todo = Todo(
      createAt: DateTime.now(),
      title: title,
      isDone: false,
      description: description,
    );
    try {
      await _firebaseApi.createTodo(todo);
      add(const TodoEvent.success());
    } on FirebaseException {
      add(const TodoEvent.error());
    }
  }

  Future<void> updateTodo({
    required String title,
    required String? description,
    required Todo localTodo,
  }) async {
    todo = localTodo.copyWith(
      title: title,
      description: description,
    );
    add(TodoEvent.loading());
    try {
      await _firebaseApi.updateTodo(todo);
    } on FirebaseException {
      add(const TodoEvent.error());
    }
  }
}
