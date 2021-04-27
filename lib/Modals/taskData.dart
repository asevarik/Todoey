import 'package:flutter/foundation.dart';
import 'package:todoeyapp/Modals/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Tasks> task = [
    Tasks(name: "start piano lesson"),
    Tasks(name: "Complete aptitude section"),
    Tasks(name: "Eat Eat Eat"),
  ];
  int getlength() {
    return task.length;
  }

  void addTask(newvalue) {
    final newtask = Tasks(name: newvalue);
    task.add(newtask);
    notifyListeners();
  }

  void updateCheckbox(Tasks task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Tasks tas) {
    task.remove(tas);
    notifyListeners();
  }
}
