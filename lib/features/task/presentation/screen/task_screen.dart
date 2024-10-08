import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/core/theme/colors.dart';
import 'package:task_manager/core/widgets/primary_button.dart';
import 'package:task_manager/core/widgets/primary_input.dart';
import 'package:task_manager/features/task/presentation/bloc/task_bloc.dart';

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
                    return AddTaskModalSheet(
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
                        context.read<TaskBloc>().add(
                              TaskEvent.toggleTask(
                                id: task.id,
                                title: task.title,
                                completed: value ?? false,
                              ),
                            );
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

class AddTaskModalSheet extends StatelessWidget {
  const AddTaskModalSheet({
    super.key,
    required this.textEditingController,
    required this.onTap,
  });

  final TextEditingController textEditingController;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
        bottom: 16 + MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PrimaryInput(
            onSubmitted: (value) {
              if (value.isNotEmpty) {
                context.read<TaskBloc>().add(TaskEvent.addTask(title: value));
                Navigator.pop(context);
              }
            },
            controller: textEditingController,
            hintText: 'Введите новую задачу',
          ),
          const SizedBox(height: 16),
          PrimaryButton(
            onTap: onTap,
            isLoading: false,
            child: Text(
              'Добавить задачу',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
