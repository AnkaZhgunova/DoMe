import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/api/firebase_api.dart';
import 'package:todo_app/bloc/todo_bloc.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/presentation/export.dart';
import 'package:todo_app/ui_kit/style/export.dart';
import 'package:todo_app/ui_kit/widgets/export.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final ValueNotifier<bool> isFormValidate = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<TodoBloc>(context);

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: selectedIndex == 0
            ? TodoColors.bgLightGrey
            : TodoColors.bgLightPink,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: TodoColors.bgWhite,
          selectedItemColor: TodoColors.purple,
          selectedLabelStyle: TodoTextStyle.darkPurple14Normal400,
          unselectedLabelStyle: TodoTextStyle.darkPurple14Normal400,
          unselectedItemColor: TodoColors.pink,
          currentIndex: selectedIndex,
          onTap: (index) => setState(() {
            selectedIndex = index;
          }),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                TodoIcons.todos,
                color: selectedIndex == 0 ? TodoColors.purple : TodoColors.pink,
                height: 30,
                fit: BoxFit.fitHeight,
              ),
              label: 'Todos',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                TodoIcons.completedTodos,
                color: selectedIndex == 1 ? TodoColors.purple : TodoColors.pink,
                height: 30,
                fit: BoxFit.fitHeight,
              ),
              label: 'Completed',
            ),
          ],
        ),
        body: StreamBuilder<List<Todo>>(
          stream: FirebaseApi.readTodos(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(
                  child: CupertinoActivityIndicator(),
                );
              default:
                if (snapshot.hasError) {
                  return Center(
                    child: Center(
                      child: Text(
                        'Something went wrong',
                        style: TodoTextStyle.violet16Normal400,
                      ),
                    ),
                  );
                } else {
                  final todos = snapshot.data;

                  bloc.setTodos(todos!);
                  final List<Todo> currentTodos =
                      todos.where((todo) => !todo.isDone).toList();
                  final List<Todo> completedTodos =
                      todos.where((todo) => todo.isDone).toList();
                  final tabs = [
                    TodosList(
                      todos: currentTodos,
                    ),
                    CompletedTodosList(
                      completedTodos: completedTodos,
                    ),
                  ];

                  return tabs[selectedIndex];
                }
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: TodoColors.purple,
          child: SvgPicture.asset(
            TodoIcons.add,
            color: TodoColors.bgLightPink,
          ),
          onPressed: () {
            TodoDialogs.showMCDialog(
              context: context,
              child: Form(
                key: _formKey,
                onChanged: () =>
                    isFormValidate.value = _formKey.currentState!.validate(),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TodoTextField(
                          title: 'Title',
                          onChanged: (value) {
                            titleController.text = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Field must not to be empty';
                            }

                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TodoTextField(
                          title: 'Description',
                          inputType: TextInputType.multiline,
                          maxLines: null,
                          onChanged: (value) {
                            descriptionController.text = value;
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ValueListenableBuilder(
                          valueListenable: isFormValidate,
                          builder: (
                            BuildContext context,
                            bool value,
                            Widget? child,
                          ) {
                            return TodoButton(
                              buttonText: 'Submit',
                              buttonType: ButtonType.purple,
                              onTap: value
                                  ? () {
                                      bloc
                                          .submit(
                                            title: titleController.text,
                                            description:
                                                descriptionController.text,
                                          )
                                          .whenComplete(
                                            () => Navigator.pop(context),
                                          );
                                    }
                                  : null,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
