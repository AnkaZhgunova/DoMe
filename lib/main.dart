import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_app/bloc/todo_bloc.dart';
import 'package:todo_app/presentation/home_page.dart';
import 'package:universal_io/io.dart';

import 'core/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String appId = '';
  const String appName = 'todo-app';
  if (Platform.isAndroid) {
    appId = '1:36838278918:android:1e1bc0f9d6e9695f278087';
  } else if (Platform.isIOS) {
    appId = '1:36838278918:ios:b7b4c74ac478a84a278087';
  } else {
    appId = '1:36838278918:web:9fa2014a35afc078278087';
  }
  await Firebase.initializeApp(
    name: Platform.isAndroid ? appName : null,
    options: FirebaseOptions(
      apiKey: 'AIzaSyB4GICsRAcmHUkrYGHDGyzaOuyYFP58K-4',
      appId: appId,
      messagingSenderId: 'G-0MYH1MN5H7',
      projectId: 'todo-app-26289',
    ),
  );
  Injector().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TodoBloc>(
      create: (context) => GetIt.I.get(),
      child: MaterialApp(
        title: 'Do me!',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
