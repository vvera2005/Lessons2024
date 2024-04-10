import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_model.dart';
import 'package:todo/pages/add_task.dart';
import 'package:todo/task_provider.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({Key? key}) : super(key: key);

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  @override
  Widget build(BuildContext context) {
    List<TaskModel> tasks = context.watch<TaskProvider>().taskList;
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.grey,
            child: const Text(
              "Active tasks",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                bool status = tasks[index].statusDone;
                return status == false
                    ? Center(
                        child: Card(
                          elevation: 0.1,
                          child: ListTile(
                            onTap: () {
                              context
                                  .read<TaskProvider>()
                                  .changeStatus(status, index);
                            },
                            leading: const Icon(Icons.check_box_outline_blank),
                            tileColor: const Color(0xff363636),
                            title: Text(tasks[index].task),
                            subtitle: Text(tasks[index].time),
                          ),
                        ),
                      )
                    : const SizedBox();
              },
            ),
          ),
          Container(
            color: Colors.grey,
            child: const Text(
              "Completed tasks",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                bool status = tasks[index].statusDone;
                return status == true
                    ? Center(
                        child: Card(
                          elevation: 0.1,
                          child: ListTile(
                            onTap: () {
                              context
                                  .read<TaskProvider>()
                                  .changeStatus(status, index);
                            },
                            leading: const Icon(Icons.check_box_outlined),
                            tileColor: const Color(0xff363636),
                            title: Text(tasks[index].task),
                            subtitle: Text(tasks[index].time),
                          ),
                        ),
                      )
                    : const SizedBox();
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff8687E7),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return AddTask();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
