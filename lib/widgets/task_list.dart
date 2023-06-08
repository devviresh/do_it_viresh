import 'package:do_it_viresh/models/task.dart';
import 'package:do_it_viresh/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskName: task.name,
              isChecked: task.isDone,
              checkboxCallBack: (checkboxState){
                taskData.updateTask(task);
              },
              longPressCallBack: (){
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskNumber,
        );
      },
    );
  }
}
