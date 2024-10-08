import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager/core/router/router.dart';
import 'package:task_manager/core/theme/colors.dart';
import 'package:task_manager/core/widgets/primary_button.dart';
import 'package:task_manager/core/widgets/primary_input.dart';
import 'package:task_manager/features/task/presentation/bloc/task_bloc.dart';

part '../widget/add_task_modal_sheet.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  late TextEditingController addTaskController;
  late TaskBloc taskBloc;

  @override
  void initState() {
    addTaskController = TextEditingController();
    taskBloc = TaskBloc()..add(const TaskEvent.started());
    super.initState();
  }

  @override
  void dispose() {
    addTaskController.dispose();
    taskBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: taskBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Задачи'),
          actions: [
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return _AddTaskModalSheet(
                      textEditingController: addTaskController,
                      onTap: () {
                        taskBloc.add(
                          TaskEvent.addTask(title: addTaskController.text),
                        );
                        Navigator.pop(context);
                      },
                    );
                  },
                );
              },
              icon: const Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {
                context.replace(RouterPaths.login);
              },
              icon: const Icon(Icons.logout),
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
                    key: Key(task.id.toString()),
                    title: Text(task.title),
                    leading: Checkbox(
                      value: task.completed,
                      onChanged: (value) {
                        context.read<TaskBloc>().add(
                              TaskEvent.toggleTask(
                                id: task.id,
                                title: task.title,
                                completed: value ?? false,
                              ),
                            );
                      },
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        context.read<TaskBloc>().add(
                              TaskEvent.deleteTask(id: task.id),
                            );
                      },
                      icon: const Icon(Icons.delete),
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
