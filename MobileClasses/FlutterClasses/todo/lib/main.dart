import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/pages/todo_list_page.dart';
import 'package:todo/task_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TaskProvider()),
      ],
      child:  MaterialApp(home: ToDoListPage()),
    ),
  );
}
