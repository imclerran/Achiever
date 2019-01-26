import 'package:flutter/material.dart';
import 'package:achiever/models/task/task.dart';
import 'package:achiever/containers/task/remove_task.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  const TaskCard({Key key, this.task}) : super(key: key);

  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: RemoveTaskButton(taskId: task.id),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: new Text(
                      //task.summary,
                      task.id.toString(),
                      style: new TextStyle(fontSize: 18.0),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  new Text(
                    "Due: eventually",
                    style: new TextStyle(fontSize: 14.0, color: Colors.grey[500]),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Container(
                height: 16.0,
                width: 16.0,
                decoration: new BoxDecoration(shape: BoxShape.circle, color: _getPriorityColor()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getPriorityColor() {
    Color color = Colors.green;
    if (task.priority == 1) color = Colors.orange;
    else if (task.priority == 2) color = Colors.red;
    return color;
  }
}