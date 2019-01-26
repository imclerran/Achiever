import 'package:quiver/core.dart';
import 'package:meta/meta.dart';

class Task {
  final int id;
  final String summary;
  final DateTime dueDate;
  final int priority;

  const Task({@required this.id, this.summary = "New Task", this.dueDate, this.priority = 0});
  // Task(String text, int id) {
  //   summary = text;
  //   this.id = id;
  //   priority = 0;
  // }

  @override
  bool operator ==(dynamic other) {
    if (other.runtimeType != runtimeType)
      return false;
    final Task typedOther = other;
    return typedOther.id == id
        && typedOther.summary == summary
        && typedOther.dueDate == dueDate
        && typedOther.priority == priority;
  }

  @override
  int get hashCode => hash4(id, summary, dueDate, priority);

  @override
  String toString() => "id: $id, summary: $summary, dueDate: $dueDate, priority: $priority";
}