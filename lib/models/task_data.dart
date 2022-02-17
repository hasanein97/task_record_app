import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'go Shopping'),
    Task(name: 'bay book'),
    Task(name: 'go gem'),
  ];
void addTask(String newTaskTitle){
  tasks.add(Task(name: newTaskTitle));
  notifyListeners();
}

void updateTask(Task task){
  task.doneChanged();
  notifyListeners();
}
void deleteTask(Task task) {
  tasks.remove(task);
  notifyListeners();
  }
}