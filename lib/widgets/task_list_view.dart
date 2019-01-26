import 'package:flutter/widgets.dart';
import 'package:achiever/models/task/task.dart';
import 'package:achiever/containers/task/task_view.dart';

// TODO: implement a stateful listview widget,
// which is wrapped by the smart redux task list widget
// and which calls setState at the appropriate time
// so that deleted objects will (hopefully) disappear

class TaskListViewState extends State<TaskListView> {
  List<Task> taskList;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: taskList.map((Task task) => new TaskView(
        task: task,
      )).toList(),
    );
  }
}

class TaskListView extends StatefulWidget {
  @override
  TaskListViewState createState() => new TaskListViewState();
}