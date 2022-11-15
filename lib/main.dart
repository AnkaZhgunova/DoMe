import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_app/bloc/todo_bloc.dart';
import 'package:todo_app/presentation/home_page.dart';

import 'core/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
