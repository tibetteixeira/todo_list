import 'package:flutter/material.dart';
import 'package:todo_list/src/screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-do List',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Task List'),
    );
  }
}
