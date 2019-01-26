import 'package:achiever/models/app_state.dart';
import 'package:achiever/models/task/task.dart';
import 'package:achiever/containers/task/task_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.fromStore,
      builder: (BuildContext context, _ViewModel vm) {
        return new ListView(
          children: vm.taskList.map((Task task) => new TaskView(
            task: task,
          )).toList(),
        );
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