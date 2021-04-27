import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String task;
  final Function checkBoxState, onlonPresscallback;
  TaskTile(
      {this.isChecked, this.task, this.checkBoxState, this.onlonPresscallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onlonPresscallback,
      title: Text(
        task,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxState,
      ),
    );
  }
}
