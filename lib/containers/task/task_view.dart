import 'package:flutter/material.dart';
import 'package:achiever/models/task/task.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:achiever/models/app_state.dart';
import 'package:achiever/widgets/task_card.dart';

class TaskView extends StatelessWidget {
  final Task task;

  const TaskView({Key key, this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.fromStore,
      builder: (BuildContext context, _ViewModel vm) {
        return new TaskCard(task: task);
      },
    );
  }
}

class _ViewModel {
	// It should take in whatever it is you want to 'watch'
  final List<Task> taskList;
  _ViewModel({
    @required this.taskList,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return new _ViewModel(taskList: store.state.taskList);
  }
}
