import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyapp/Modals/taskData.dart';
import 'package:todoeyapp/Modals/tasks.dart';
import 'list_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.task.length,
            itemBuilder: (context, index) {
              final task = taskData.task[index];
              return TaskTile(
                isChecked: task.isDone,
                task: task.name,
                checkBoxState: (checkBoxState) {
                  taskData.updateCheckbox(task);
                },
                onlonPresscallback: () {
                  print("tapped here");
                  taskData.deleteTask(task);
                },
              );
            });
      },
    );
  }
}
