import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Add Task"),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: taskController,
              decoration: InputDecoration(
                labelText: "Enter Task",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {

                Navigator.pop(context, taskController.text);

              },
              child: Text("Save Task"),
            )
          ],
        ),
      ),
    );
  }
}
