import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

bool chosenValue = false;

class TaskList extends StatefulWidget {
  const TaskList({super.key, required this.tasks});

  final List<Task> tasks;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].title,
          checkBoxCallBack: (checkBoxState) {
            setState(() {
              widget.tasks[index].isDone = checkBoxState!;
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
