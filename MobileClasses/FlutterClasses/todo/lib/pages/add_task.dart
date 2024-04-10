import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/task_provider.dart';
import 'package:todo/widgets/text_field_widget.dart';

class AddTask extends StatelessWidget {
  AddTask({super.key});
  final TextEditingController _taskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff363636),
      child: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Add task",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              const SizedBox(height: 24),
              TextFieldWidget(
                controller: _taskController,
                hintText: "write a task",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Icon(
                    Icons.watch_later_outlined,
                  ),
                  IconButton(
                    onPressed: () {
                      context
                          .read<TaskProvider>()
                          .addTask(task: _taskController.text, time: "time");
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.send),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
