import 'package:flutter/cupertino.dart';
import 'package:todo/models/task_model.dart';

class TaskProvider extends ChangeNotifier {
  final List<TaskModel> _tasklist = [TaskModel(task: "task", time: "time")];

  List<TaskModel> get taskList => _tasklist;

  void changeStatus(bool status, int index) {
    _tasklist[index].statusDone = !_tasklist[index].statusDone;
    notifyListeners();
  }

  void addTask({required String task,required String time}) {
    _tasklist.add(TaskModel(task: task, time: time));
    notifyListeners();
  }
}
