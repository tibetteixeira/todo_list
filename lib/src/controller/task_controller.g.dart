// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskController on TaskControllerBase, Store {
  final _$taskListAtom = Atom(name: 'TaskControllerBase.taskList');

  @override
  ObservableList<String> get taskList {
    _$taskListAtom.reportRead();
    return super.taskList;
  }

  @override
  set taskList(ObservableList<String> value) {
    _$taskListAtom.reportWrite(value, super.taskList, () {
      super.taskList = value;
    });
  }

  final _$TaskControllerBaseActionController =
      ActionController(name: 'TaskControllerBase');

  @override
  void addTask(String task) {
    final _$actionInfo = _$TaskControllerBaseActionController.startAction(
        name: 'TaskControllerBase.addTask');
    try {
      return super.addTask(task);
    } finally {
      _$TaskControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTask(String task) {
    final _$actionInfo = _$TaskControllerBaseActionController.startAction(
        name: 'TaskControllerBase.removeTask');
    try {
      return super.removeTask(task);
    } finally {
      _$TaskControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateTask(String oldTask, String newTask) {
    final _$actionInfo = _$TaskControllerBaseActionController.startAction(
        name: 'TaskControllerBase.updateTask');
    try {
      return super.updateTask(oldTask, newTask);
    } finally {
      _$TaskControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
taskList: ${taskList}
    ''';
  }
}
