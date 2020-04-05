import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';

import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            task.taskText,
            task.isDone,
            (checkBoxState) {
              taskData.updateTask(task);
            },
            (){
              taskData.deleteTask(task);
            }
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
