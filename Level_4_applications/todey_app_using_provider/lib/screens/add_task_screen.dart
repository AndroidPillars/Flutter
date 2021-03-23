import 'package:flutter/material.dart';
import 'package:todey_app_using_provider/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todey_app_using_provider/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State {
// here added the texteditecontroller with the dispose methode to clear data evrytime when use the controller
  TextEditingController tasktext = TextEditingController();
  @override
  void dispose() {
// Clean up the controller when the widget is disposed.
    tasktext.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            // call the controller in textfield
            TextField(
              controller: tasktext,
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                // call the value that controller contain by using ex: controllername.text
                Provider.of<TaskData>(context, listen: false)
                    .addTask(tasktext.text);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
