import 'package:achiever/models/app_state.dart';
import 'package:achiever/reducers/task_reducer.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
      nextTaskId: nextTaskIdReducer(state.nextTaskId, action),
      taskList: taskListReducer(state.taskList, state.nextTaskId, action),
  );
}