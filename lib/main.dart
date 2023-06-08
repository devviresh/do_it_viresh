import 'package:do_it_viresh/models/task.dart';
import 'package:do_it_viresh/task_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const DoIt());

class DoIt extends StatelessWidget {
  const DoIt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // builder: (context) => TaskData(),
      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'DO IT VIRESH',
        home: TaskScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}


