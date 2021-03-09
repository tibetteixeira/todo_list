import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:todo_list/src/controller/task_controller.dart';
import 'package:todo_list/src/screen/add_task.dart';
import 'package:todo_list/src/screen/edit_task.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  final TaskController taskController = TaskController();

  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(title),
        ),
      ),
      body: Center(
        child: Container(
          child: Observer(
            builder: (_) => taskController.taskList.length == 0
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Task list is empty',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  )
                : SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        children: taskController.taskList
                            .map((element) => buildCard(context, element))
                            .toList(),
                      ),
                    ),
                  ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddTask(taskController: taskController)),
          );
        },
        tooltip: 'Add task',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget buildCard(BuildContext context, String element) {
    return Container(
      width: 450,
      height: 50,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                element,
                style: TextStyle(fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.edit),
                    padding: EdgeInsets.all(2.0),
                    tooltip: 'Edit task',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditTask(
                                oldNameTask: element,
                                taskController: taskController)),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    padding: EdgeInsets.all(2.0),
                    tooltip: 'Delete task',
                    onPressed: () {
                      taskController.removeTask(element);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
