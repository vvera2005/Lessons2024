import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 139, 110, 72),
          title: Text("User page"),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'name   ' + 'Vera',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ));
  }
}
