import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/utils/stream_transformer.dart';

class FirebaseApi {
  String todoID = '';
  Future<String> createTodo(Todo todo) async {
    final todoCollection = FirebaseFirestore.instance.collection('todo').doc();
    todoID = todoCollection.id;
    final toDo = todo.copyWith(id: todoID);
    await todoCollection.set(toDo.toJson());

    return todoID;
  }

  static Stream<List<Todo>> readTodos() => FirebaseFirestore.instance
      .collection('todo')
      .snapshots()
      .transform(Transformer.transformer(Todo.fromJson).cast());

  Future<void> updateTodo(Todo todo) async {
    final todoCollection = FirebaseFirestore.instance.collection('todo').doc(todo.id);

    await todoCollection.update(todo.toJson());
  }

  Future<void> deleteTodo(Todo todo) async {
    final docTodo = FirebaseFirestore.instance.collection('todo').doc(todo.id);

    await docTodo.delete();
  }
}
