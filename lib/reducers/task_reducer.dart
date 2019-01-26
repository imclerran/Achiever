import 'package:achiever/actions/task_actions.dart';
import 'package:achiever/models/task/task.dart';

List<Task> taskListReducer(List<Task> taskList, int nextTaskId, action) {
  if (action is AddTaskAction) {
    var newTaskList = new List<Task>();
    for(var task in taskList) {
      newTaskList.add(task);
    }
    newTaskList.add(new Task(id: nextTaskId));
    return newTaskList;
	}
  else if (action is RemoveTaskAction) {
    var newTaskList = new List<Task>();
    for(var task in taskList) {
      if(task.id != action.taskId) {
        newTaskList.add(task);
      }
    }
		return newTaskList;
  }
  else if (action is EditTaskAction) {
    int index = taskList.indexWhere((task) => task.id == action.updatedTask.id);
    taskList.replaceRange(index, index+1, [action.updatedTask]);
    return taskList;
  }
  else {
    return taskList;
  }
}

int nextTaskIdReducer(int nextTaskId, action) {
  if (action is AddTaskAction) {
    return nextTaskId+1;
	}
  else {
    return nextTaskId;
  }
}