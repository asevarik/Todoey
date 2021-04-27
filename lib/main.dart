import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyapp/Modals/taskData.dart';
import 'package:todoeyapp/screens/Tasksscreen.dart';

void main() {
  runApp(Todey());
}

class Todey extends StatelessWidget {
  const Todey({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
