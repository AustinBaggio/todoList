import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/constants.dart';
import 'package:todolist/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: kBoxStyle,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              "Add Task",
              style: kTextTitle.copyWith(color: kMainDarkColor),
            ),
            Center(
              child: Container(
                padding:
                    const EdgeInsets.only(left: 30.0, right: 30, bottom: 10),
                width: double.infinity,
                child: TextField(
                  autofocus: true,
                  decoration: new InputDecoration(
                      hintText: "e.g. Write the tickets for next sprint...",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kMainDarkColor))),
                  cursorColor: kMainDarkColor,
                  onChanged: (value) {
                    newTitle = value;
                  },
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                color: kMainDarkColor,
                textColor: kMainLightColor,
                child: Text("Add to list"),
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false).addTask(newTitle);
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
