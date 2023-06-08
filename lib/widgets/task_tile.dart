import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function checkboxCallBack;
  final VoidCallback longPressCallBack;

  TaskTile(
      {required this.taskName,
      required this.isChecked,
      required this.checkboxCallBack,
      required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskName,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value) {
          checkboxCallBack(value);
        },
      ),
      onLongPress: longPressCallBack,
    );
  }
}
