import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:achiever/actions/task_actions.dart';
import 'package:achiever/models/app_state.dart';
import 'package:redux/redux.dart';
import 'package:achiever/widgets/wide_fab.dart';

// This is just another stateless widget.
class AddTaskButton extends StatelessWidget {
  AddTaskButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, VoidCallback>(
      converter: (Store<AppState> store) {
        return () {
          store.dispatch(new AddTaskAction());
        };
      },
      builder: (BuildContext context, VoidCallback addTask) {
        return new WideFab(
          onPressed: addTask,
          buttonText: "NEW TASK",
        );
      },
    );
  }
}