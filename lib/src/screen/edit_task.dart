import 'package:flutter/material.dart';
import 'package:todo_list/src/controller/task_controller.dart';

class EditTask extends StatelessWidget {
  final TaskController taskController;
  final String oldNameTask;
  String value;
  var txt = TextEditingController();

  EditTask({this.oldNameTask, this.taskController}) {
    txt.text = oldNameTask;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit task"),
      ),
      body: Center(
        child: Container(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  controller: txt,
                  decoration: InputDecoration(
                    hintText: 'new task name',
                  ),
                  onChanged: (text) {
                    value = text;
                  }),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              ElevatedButton(
                onPressed: () {
                  taskController.updateTask(oldNameTask, value);
                  Navigator.pop(context);
                },
                child: Text('Upate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
