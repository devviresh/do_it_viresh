import 'dart:ui';

import 'package:do_it_viresh/models/task.dart';
import 'package:do_it_viresh/widgets/add_task.dart';
import 'package:do_it_viresh/widgets/task_list.dart';
import 'package:do_it_viresh/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTask(),
          );
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 80.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    child: Icon(Icons.checklist_rounded,
                        size: 27.0, color: Colors.lightBlue),
                    radius: 24.0,
                    backgroundColor: Colors.white),
                SizedBox(height: 20.0),
                Text('DO IT VIRESH!',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
                SizedBox(height: 5.0),
                Text('${Provider.of<TaskData>(context).taskNumber} tasks',
                    style: TextStyle(color: Colors.white))
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 15.0, left: 15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0))),
              child: TaskList(),
            ),
          )
        ],
      ),
    );
  }
}
