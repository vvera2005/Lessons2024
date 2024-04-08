import 'package:dark_mode_changer/logic/user/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key, });


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: context.read<UserProvider>().getUsers(),
        builder: (context, snapshot) {
          int index = context.read<UserProvider>().getIndex();

          return Scaffold(
              appBar: AppBar(
                title: const Text("User page"),
              ),
              body: Center(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 100,
                      child: Text(
                        snapshot.data?[index].username?.substring(0, 1) ?? "",
                        style: const TextStyle(fontSize: 100),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      snapshot.data?[index].username ?? "",
                      style: const TextStyle(fontSize: 30),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      snapshot.data?[index].phone ?? "",
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      snapshot.data?[index].website ?? "",
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      snapshot.data?[index].email ?? "",
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ));
        });
  }
}
