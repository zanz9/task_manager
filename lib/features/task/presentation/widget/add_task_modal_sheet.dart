part of '../screen/task_screen.dart';

class _AddTaskModalSheet extends StatelessWidget {
  const _AddTaskModalSheet({
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
