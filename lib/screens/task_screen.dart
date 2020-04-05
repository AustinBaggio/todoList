import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/components/tasks_list.dart';
import 'package:todolist/constants.dart';
import 'package:todolist/models/task_data.dart';
import 'package:todolist/screens/add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainDarkColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: AddTaskScreen(),
            ),
          );
        },
        backgroundColor: kMainDarkColor,
        child: Icon(Icons.add),
        foregroundColor: kMainLightColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: kMainLightColor,
                  foregroundColor: kMainDarkColor,
                  radius: 30,
                  child: Icon(Icons.list, size: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todo List',
                  style: kTextTitle,
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} tasks',
                  style: TextStyle(
                    color: kMainLightColor,
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: TasksList(),
              decoration: kBoxStyle,
            ),
          ),
        ],
      ),
    );
  }
}
