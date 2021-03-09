import 'package:flutter/material.dart';
import 'package:todo_list/src/controller/task_controller.dart';

class AddTask extends StatelessWidget {
  final TaskController taskController;
  String value;

  AddTask({this.taskController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add task"),
      ),
      body: Center(
        child: Container(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  decoration: InputDecoration(
                    hintText: 'Task name',
                  ),
                  onChanged: (text) {
                    value = text;
                  }),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              ElevatedButton(
                onPressed: () {
                  taskController.addTask(value);
                  Navigator.pop(context);
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
