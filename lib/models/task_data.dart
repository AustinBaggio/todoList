import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todolist/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task("Task 1 buy this"),
    Task("Task 2 buy that"),
    Task("Taskasd 3"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    _tasks.add(Task(newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
