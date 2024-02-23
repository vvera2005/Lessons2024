import 'package:flutter/material.dart';

void main() => runApp(const Signin());

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sign in"),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(40, 40, 40, 20),
              margin: const EdgeInsets.fromLTRB(5, 120, 5, 5),
              child: const TextField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Username",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Color.fromARGB(255, 246, 248, 250),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
              margin: const EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: const TextField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Passward",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Color.fromARGB(255, 246, 248, 250),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text("Forgot your passward?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 116, 113, 113)))),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(120, 10, 120, 10),
              margin: const EdgeInsets.fromLTRB(5, 50, 5, 5),
              decoration: const BoxDecoration(color: Colors.green),
              child: const Text('Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
            ),
            const Text(
              'or',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/facebook.png',
                      height: 60,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/linkedin.png',
                      height: 60,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/twitter.jpg',
                      height: 60,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Dont have an accaunt? '),
                TextButton(
                    onPressed: () {},
                    child: const Text('Sign up',
                        style: TextStyle(
                            color: Color.fromARGB(255, 211, 111, 144))))
              ],
            )
          ],
        ),
      ),
    );
  }
}
