import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/features/task/presentation/bloc/task_bloc.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskBloc()..add(const TaskEvent.started()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Задачи'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: BlocBuilder<TaskBloc, TaskState>(
          builder: (context, state) {
            if (state is TaskLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is TaskLoaded) {
              return ListView.builder(
                itemCount: state.tasks.length,
                itemBuilder: (context, index) {
                  final task = state.tasks[index];
                  return ListTile(
                    title: Text(task.title),
                    trailing: Checkbox(
                      value: task.completed,
                      onChanged: (value) {
                        // Здесь можно добавить логику для изменения статуса задачи
                      },
                    ),
                  );
                },
              );
            } else if (state is TaskError) {
              return Center(child: Text('Ошибка: ${state.message}'));
            } else {
              return const Center(child: Text('Нет доступных задач'));
            }
          },
        ),
      ),
    );
  }
}
