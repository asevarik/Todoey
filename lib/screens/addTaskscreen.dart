import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyapp/Modals/taskData.dart';

class AddtaskScreen extends StatelessWidget {
  String newtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "ADD Task",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
            ),
            TextField(
              autofocus: true,
              onChanged: (value) {
                newtitle = value;
              },
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              onPressed: () {
                Provider.of<TaskData>(context).addTask(newtitle);
                Navigator.pop(context);
              },
              color: Colors.lightBlueAccent,
              child: Text(
                "Add Task",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
