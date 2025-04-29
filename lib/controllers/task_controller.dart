import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/task.dart';

class TaskController with ChangeNotifier {
  List<Task> _tasks = [];
  List<Task> get tasks => List.unmodifiable(_tasks);

  TaskController() {
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString('tasks');
    if (data != null) _tasks = Task.decode(data);
    notifyListeners();
  }

  Future<void> _saveTasks() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('tasks', Task.encode(_tasks));
  }

  void addTask(String title) {
    if (title.trim().isEmpty) return;
    _tasks.add(Task(title: title));
    _saveTasks();
    notifyListeners();
  }

  void toggleTask(int index) {
    _tasks[index].isDone = !_tasks[index].isDone;
    _saveTasks();
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    _saveTasks();
    notifyListeners();
  }
}
