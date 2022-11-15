import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/presentation/export.dart';
import 'package:todo_app/ui_kit/style/export.dart';

class CompletedTodosList extends StatelessWidget {
  final List<Todo> completedTodos;
  const CompletedTodosList({
    required this.completedTodos,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return completedTodos.isNotEmpty
        ? ListView.separated(
            itemCount: completedTodos.length,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 70,
            ),
            itemBuilder: (context, int index) {
              return TodoCard(
                todo: completedTodos[index],
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
