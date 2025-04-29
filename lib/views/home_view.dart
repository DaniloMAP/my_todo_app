import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/task_controller.dart';
import '../widgets/task_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final taskController = Provider.of<TaskController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Lista de Tarefas'),
        centerTitle: true,
      ),
      body:
          taskController.tasks.isEmpty
              ? const Center(child: Text('Suas tarefas aparecerão aqui!'))
              : ListView.builder(
                itemCount: taskController.tasks.length,
                itemBuilder:
                    (context, index) => TaskTile(
                      task: taskController.tasks[index],
                      onToggle: () => taskController.toggleTask(index),
                      onDelete: () => taskController.removeTask(index),
                    ),
              ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddTaskDialog(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showAddTaskDialog(BuildContext context) {
    final TextEditingController inputController = TextEditingController();

    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: const Text('Nova tarefa'),
            content: TextField(
              controller: inputController,
              decoration: const InputDecoration(
                labelText: 'Título',
                border: OutlineInputBorder(),
              ),
              autofocus: true,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancelar'),
              ),
              ElevatedButton(
                onPressed: () {
                  final title = inputController.text.trim();
                  if (title.isNotEmpty) {
                    Provider.of<TaskController>(
                      context,
                      listen: false,
                    ).addTask(title);
                    Navigator.of(context).pop();
                  }
                },
                child: const Text('Adicionar'),
              ),
            ],
          ),
    );
  }
}
