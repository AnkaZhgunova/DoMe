import 'package:get_it/get_it.dart';
import 'package:todo_app/api/firebase_api.dart';
import 'package:todo_app/bloc/todo_bloc.dart';

class Injector {
  final GetIt _getIt = GetIt.instance;

  void init() {
    _getIt.registerLazySingleton<FirebaseApi>(
      () => FirebaseApi(),
    );
    _getIt.registerFactory<TodoBloc>(
      () => TodoBloc(
        _getIt.get(),
      ),
    );
  }
}
