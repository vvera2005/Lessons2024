import 'package:first/db/preferences.dart';
import 'package:first/pages/edit_profile.dart';
import 'package:first/pages/profile.dart';
import 'package:first/pages/sign_in.dart';
import 'package:first/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/signin':
        return MaterialPageRoute(
            builder: (_) => Signin(GetIt.instance.get<PreferencService>()));
      case '/signup':
        return MaterialPageRoute(
            builder: (_) => Signup(GetIt.instance.get<PreferencService>()));
      case '/profile':
        return MaterialPageRoute(
            builder: (_) => Profile(GetIt.instance.get<PreferencService>()));
      case '/editProfile':
        return MaterialPageRoute(builder: (_) => EditProfile());
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error Page"),
      ),
    );
  });
}
