import 'package:dark_mode_changer/pages/user_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generateRout(RouteSettings settings) {
    switch (settings.name) {
      case "/userPage":
        return MaterialPageRoute(builder: (_) => const UserPage());
    }
  }
}
