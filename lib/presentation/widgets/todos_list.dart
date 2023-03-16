import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/presentation/export.dart';
import 'package:todo_app/ui_kit/style/export.dart';

class TodosList extends StatelessWidget {
  final List<Todo> todos;
  const TodosList({
    required this.todos,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return todos.isNotEmpty
        ? ListView.separated(
            itemCount: todos.length,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 70,
            ),
            itemBuilder: (context, int index) {
              todos.sort((a, b) => a.createAt.compareTo(b.createAt));

              return TodoCard(
                todo: todos[index],
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              height: 20,
            ),
          )
        : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(TodoIcons.emptyList),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Empty list',
                  style: TodoTextStyle.violet16Normal400,
                ),
              ],
            ),
          );
  }
}
