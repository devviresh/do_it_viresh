import 'dart:collection';

import 'package:flutter/foundation.dart';

class Task {
  final String name;
  bool isDone = false;

  Task({required this.name});

  void toggleDone(){
    isDone = !isDone;
  }

}


class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'make it happen'),
    Task(name: 'Do viresh'),
    Task(name: 'you can do it'),
  ];

  UnmodifiableListView get tasks => UnmodifiableListView(_tasks);


  int get taskNumber => _tasks.length;

  void addTask(String newTaskName){
    final newTask = Task(name: newTaskName);
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}

