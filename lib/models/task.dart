import 'dart:convert';

class Task {
  final String title;
  bool isDone;

  Task({required this.title, this.isDone = false});

  Map<String, dynamic> toMap() => {'title': title, 'isDone': isDone};

  factory Task.fromMap(Map<String, dynamic> map) =>
      Task(title: map['title'], isDone: map['isDone']);

  static String encode(List<Task> tasks) =>
      jsonEncode(tasks.map((e) => e.toMap()).toList());

  static List<Task> decode(String tasks) =>
      (jsonDecode(tasks) as List).map((e) => Task.fromMap(e)).toList();
}
