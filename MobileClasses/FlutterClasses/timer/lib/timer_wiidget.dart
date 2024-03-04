import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:timer/mode_checker.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});
  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int timeleft = 0;
  String _message = "Start";
  Color? _color = Colors.green[300];
  bool flag = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(AppStateObserver());
  }

  void _timerlogic() {
    _message = "Stop";
    _color = Colors.grey;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        bool isInBackground = AppStateObserver.isInBackground;
        if (flag == true && isInBackground == false) {
          timeleft--;
        } else if (flag == false) {
          timer.cancel();
          _message = "Start";
          _color = Colors.green[300];
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Timer'),
          backgroundColor: const Color.fromARGB(255, 137, 196, 140),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(hintText: "Enter the time"),
                onChanged: (value) {
                  timeleft = int.parse(value);
                },
              ),
              Text(
                timeleft.toString(),
                style: const TextStyle(fontSize: 80),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  if (flag == true) {
                    flag = false;
                  } else {
                    flag = true;
                  }
                  _timerlogic();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _color,
                ),
                child: Text(_message, style: const TextStyle(fontSize: 40)),
              ),
            ],
          ),
        ));
  }
}
