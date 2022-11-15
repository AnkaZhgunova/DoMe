import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_app/bloc/todo_bloc.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/ui_kit/style/export.dart';
import 'package:todo_app/ui_kit/widgets/export.dart';

class EditTodo extends StatefulWidget {
  final Todo todo;

  const EditTodo({
    required this.todo,
    Key? key,
  }) : super(key: key);

  @override
  State<EditTodo> createState() => _EditTodoState();
}

class _EditTodoState extends State<EditTodo> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final ValueNotifier<bool> isFormValidate = ValueNotifier(false);

  @override
  void initState() {
    titleController.text = widget.todo.title;
    descriptionController.text = widget.todo.description ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: BlocProvider<TodoBloc>(
        create: (context) => GetIt.I.get(),
        child: BlocBuilder<TodoBloc, TodoState>(
          builder: (context, state) {
            if (state is TodoStateLoading) {
              return Scaffold(
                body: Center(
                  child: CupertinoActivityIndicator(),
                ),
              );
            }

            return Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: TodoColors.bgLightGrey,
              body: Form(
                key: _formKey,
                onChanged: () =>
                    isFormValidate.value = _formKey.currentState!.validate(),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            alignment: Alignment.bottomLeft,
                            onPressed: () => Navigator.pop(context),
                            icon: SvgPicture.asset(
                              TodoIcons.back,
                              color: TodoColors.darkPurple,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TodoTextField(
                          title: 'Title',
                          textEditingController: titleController,
                          onChanged: (_) {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Field must not to be empty';
                            }

                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TodoTextField(
                          title: 'Description',
                          textEditingController: descriptionController,
                          inputType: TextInputType.multiline,
                          maxLines: null,
                          onChanged: (_) {},
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ValueListenableBuilder(
                          valueListenable: isFormValidate,
                          builder: (
                            BuildContext context,
                            bool value,
                            Widget? child,
                          ) {
                            return TodoButton(
                              buttonText: 'Save',
                              buttonType: ButtonType.purple,
                              onTap: value
                                  ? () {
                                      BlocProvider.of<TodoBloc>(context)
                                          .updateTodo(
                                        title: titleController.text.trim(),
                                        description:
                                            descriptionController.text.trim(),
                                        localTodo: widget.todo,
                                      );
                                      Navigator.of(context).pop();
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
