import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:achiever/actions/task_actions.dart';
import 'package:achiever/models/app_state.dart';
import 'package:redux/redux.dart';

// This is just another stateless widget.
class RemoveTaskButton extends StatelessWidget {
  final int taskId;
  RemoveTaskButton({Key key, this.taskId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, VoidCallback>(
      converter: (Store<AppState> store) {
        return () {
          store.dispatch(new RemoveTaskAction(taskId));
        };
      },
      builder: (BuildContext context, VoidCallback removeTask) {
        return new IconButton(
          icon: Icon(Icons.check),
          tooltip: 'Mark task as complete',
          onPressed: removeTask,
          iconSize: 36.0,
          color: Theme.of(context).accentColor,
        );
      },
    );
  }
}