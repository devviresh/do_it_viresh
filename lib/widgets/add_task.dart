import 'package:do_it_viresh/models/task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTask extends StatelessWidget {
  late String newTaskName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500),
            ),
            TextField(
              autofocus: true,
              onChanged: (value) {
                newTaskName = value;
                print(newTaskName);
              },
            ),
            SizedBox(height: 10.0),
            MaterialButton(
              color: Colors.lightBlue,
              height: 45.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              onPressed: ()  {
                Provider.of<TaskData>(context,listen: false).addTask(newTaskName);
                Navigator.pop(context);
              },
              child: Text('Add', style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
