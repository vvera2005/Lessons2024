import 'package:flutter/material.dart';

class AppStateObserver extends WidgetsBindingObserver {
  static bool isInBackground = false;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        isInBackground = false;
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        isInBackground = true;
        break;
      default:
        isInBackground = false;
    }
  }
}
