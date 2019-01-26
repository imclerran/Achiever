import 'package:achiever/models/task/task.dart';

class AddTaskAction {}

class RemoveTaskAction {
  int taskId;
  RemoveTaskAction(this.taskId);
}

class EditTaskAction {
  Task updatedTask;
  EditTaskAction(this.updatedTask);
}