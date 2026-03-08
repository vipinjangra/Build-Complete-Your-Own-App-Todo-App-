import 'package:flutter/material.dart';
import 'add_task_screen.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {

  List<String> tasks = [];

  void addTask(String task) {
    setState(() {
      tasks.add(task);
    });
  }

  void deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("My Tasks"),
      ),

      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {

          return ListTile(
            title: Text(tasks[index]),

            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                deleteTask(index);
              },
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {

          final newTask = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => AddTaskScreen(),
            ),
          );

          if (newTask != null) {
            addTask(newTask);
          }
        },
      ),
    );
  }
}
