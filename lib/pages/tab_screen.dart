import 'package:flutter/material.dart';
import 'package:achiever/containers/task/add_task.dart';
import 'package:achiever/pages/task_list_screen.dart';

class TabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Achiever'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "Tasks", icon: Icon(Icons.list)),
              Tab(text: "Progress", icon: Icon(Icons.turned_in_not)),
              Tab(text: "Achievements", icon: Icon(Icons.new_releases)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            TaskListScreen(),
            //Text("Tasks"),
            Text("Progress"),
            Text("Achievements"),
          ],
        ),
        floatingActionButton: new AddTaskButton(),
      ),
    );
  }
}