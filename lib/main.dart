import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controllers/task_controller.dart';
import 'views/home_view.dart';
import 'core/app_theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => TaskController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      theme: AppTheme.defaultTheme,
      home: HomeView(),
    );
  }
}
