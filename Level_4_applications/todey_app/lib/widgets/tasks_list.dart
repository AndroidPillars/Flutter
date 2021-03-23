import 'package:flutter/material.dart';
import 'package:todey_app/widgets/task_tile.dart';
import 'package:todey_app/models/task.dart';

class TasksList extends StatefulWidget {

  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (bool checkboxState) {
            setState(() {
              widget.tasks[index].isDone = checkboxState;
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
