import 'package:dark_mode_changer/logic/user/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: context.read<UserProvider>().getUsers(),
        builder: (context, snapshot) {
          return Scaffold(
              appBar: AppBar(
                title: const Text("Users List"),
              ),
              body: ListView.builder(
                  itemCount: snapshot.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          child: Text(
                              snapshot.data?[index].username?.substring(0, 1) ??
                                  "")),
                      title: Text(snapshot.data?[index].username ?? ""),
                      subtitle: Text(snapshot.data?[index].email ?? ""),
                      trailing: Text(snapshot.data?[index].id.toString() ?? ""),
                      onTap: () {
                        context.read<UserProvider>().setIndex(index);
                        Navigator.of(context).pushNamed("/userPage");
                      },
                    );
                  }));
        });
  }
}


// Center(
//             child: snapshot.hasData
//                 ? Text(snapshot.data ?? "")
//                 : Center(child: CircularProgressIndicator())),