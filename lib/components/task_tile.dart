import 'package:flutter/material.dart';
import 'package:todolist/constants.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function toggle;
  final Function deleteTask;

  TaskTile(this.taskTitle, this.isChecked, this.toggle, this.deleteTask);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        onLongPress: deleteTask,
        title: Text(
          
          taskTitle,
          style: TextStyle(
            color: kMainDarkColor,
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: kMainDarkColor,
          onChanged: toggle,
          
        ),
      ),
    );
  }
}
