import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_app/bloc/todo_bloc.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/presentation/export.dart';
import 'package:todo_app/ui_kit/style/export.dart';
import 'package:url_launcher/url_launcher.dart';

class TodoCard extends StatelessWidget {
  final Todo todo;
  const TodoCard({
    required this.todo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<TodoBloc>(context);

    return Slidable(
      key: Key(todo.id!),
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (_) => Navigator.of(context).push(
              MaterialPageRoute<Todo>(
                builder: (context) => EditTodo(
                  todo: todo,
                ),
              ),
            ),
            borderRadius: BorderRadius.circular(20),
            backgroundColor: TodoColors.pink,
            foregroundColor: TodoColors.bgLightPink,
            icon: CupertinoIcons.pencil,
            label: 'Edit',
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SizedBox(
            width: 10,
          ),
          SlidableAction(
            onPressed: (_) {
              bloc.removeTodo(todo);
            },
            borderRadius: BorderRadius.circular(20),
            backgroundColor: TodoColors.redError,
            foregroundColor: TodoColors.bgLightPink,
            icon: CupertinoIcons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: TodoColors.bgWhite,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: TodoColors.pink.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Transform.scale(
              scale: 1.2,
              child: Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                side: MaterialStateBorderSide.resolveWith(
                  (states) => BorderSide(
                    width: 1.5,
                    color: TodoColors.violet,
                  ),
                ),
                activeColor: TodoColors.violet,
                checkColor: TodoColors.bgWhite,
                value: todo.isDone,
                onChanged: (value) {
                  bloc.toggleTodoStatus(
                    isCompleted: value!,
                    localTodo: todo,
                  );
                },
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    todo.title,
                    style: TodoTextStyle.purple20Medium600,
                  ),
                  if (todo.description != null && todo.description!.isNotEmpty)
                    Padding(
                      padding: EdgeInsets.only(top: 4),
                      child: SelectableText.rich(
                        TextSpan(
                          children: recognizeText(todo.description!),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<TextSpan> recognizeText(String todoDescription) {
    final List<TextSpan> textSpan = [];

    final urlRegExp = RegExp(
      r'((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?',
    );

    String getLink(String linkString) {
      textSpan.add(
        TextSpan(
          text: linkString,
          style: TodoTextStyle.darkPurple16Normal400.copyWith(color: TodoColors.violet),
          recognizer: TapGestureRecognizer()
            ..onTap = () async {
              if (await canLaunchUrl(Uri.parse(linkString))) {
                await launchUrl(
                  Uri.parse(linkString),
                );
              }
            },
        ),
      );

      return linkString;
    }

    String getNormalText(String normalText) {
      textSpan.add(
        TextSpan(
          text: normalText,
          style: TodoTextStyle.darkPurple16Normal400,
        ),
      );

      return normalText;
    }

    todoDescription.splitMapJoin(
      urlRegExp,
      onMatch: (m) => getLink('${m.group(0)}'),
      onNonMatch: (n) => getNormalText(n.substring(0)),
    );

    return textSpan;
  }
}
