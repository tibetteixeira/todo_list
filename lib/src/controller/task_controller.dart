import 'package:mobx/mobx.dart';

part 'task_controller.g.dart';

class TaskController = TaskControllerBase with _$TaskController;

abstract class TaskControllerBase with Store {
  @observable
  ObservableList<String> taskList = ObservableList.of([]);

  @action
  void addTask(String task) {
    taskList.add(task);
  }

  @action
  void removeTask(String task) {
    taskList.remove(task);
  }

  @action
  void updateTask(String oldTask, String newTask) {
    taskList.remove(oldTask);
    taskList.add(newTask);
  }
}
