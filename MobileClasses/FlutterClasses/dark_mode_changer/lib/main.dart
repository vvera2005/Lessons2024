
import 'package:dark_mode_changer/logic/user/user_provider.dart';
import 'package:dark_mode_changer/pages/user_list_page.dart';
import 'package:dark_mode_changer/routs/route_generator.dart';
import 'package:dark_mode_changer/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

void _setupServices() {
  GetIt.I.registerFactory(() => ApiService());
}

void main() {
  _setupServices();
  runApp(ChangeNotifierProvider(
    create: (context) => UserProvider(GetIt.I.get<ApiService>()),
    child: const MaterialApp(
      home: UserListPage(),
      onGenerateRoute: RouteGenerator.generateRout,
    ),
  ));
}
