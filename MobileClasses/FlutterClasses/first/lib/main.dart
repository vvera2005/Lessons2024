import 'package:first/db/preferences.dart';
import 'package:first/route_generator.dart';
import 'package:first/state/profile_data_states.dart';
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
  runApp(UserStatewidget(
    preferenceService: GetIt.instance.get<PreferencService>(),
    child: const MaterialApp(
      initialRoute: "/signin",
      onGenerateRoute: RouteGenerator.generateRoute,
    ),
  ));
}
