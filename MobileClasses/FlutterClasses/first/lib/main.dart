import 'package:first/db/preferences.dart';
import 'package:first/main.dart';
import 'package:first/route_generator.dart';
import 'package:first/pages/sign_in.dart';
import 'package:first/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> _setupServices() async {
  final SharedPreferences preferences = await SharedPreferences.getInstance();
  GetIt.instance.registerFactory(() => PreferencService(preferences));
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _setupServices();
  runApp(const MaterialApp(
    initialRoute: "/signin",
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
