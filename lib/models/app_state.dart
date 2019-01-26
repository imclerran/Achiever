// models/app_state.dart
import "task/task.dart";

class AppState {
  final List<Task> taskList;
  final int nextTaskId;

  AppState({this.taskList = const [], this.nextTaskId = 0});

	AppState copyWith({List<Task> taskList, Task currentTask, int nextTaskId}) {
		return new AppState(
			taskList: taskList ?? this.taskList,
      nextTaskId: nextTaskId ?? this.nextTaskId,
		);
	}

	@override
	String toString() {
		return 'AppState{taskList: $taskList, nextTaskId: $nextTaskId}';
	}
}