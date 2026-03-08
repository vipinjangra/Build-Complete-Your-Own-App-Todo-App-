import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(TaskFlowApp());
}

class TaskFlowApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TaskFlow",
      home: LoginScreen(),
    );
  }
}
