import 'package:first/db/preferences.dart';
import 'package:first/models/user_model.dart';
import 'package:flutter/material.dart';

class UserStatewidget extends StatefulWidget {
  const UserStatewidget({
    required this.child,
    required this.preferenceService,
    super.key,
  });
  final PreferencService preferenceService;
  final Widget child;
  @override
  State<UserStatewidget> createState() => _UserStateState();
}

class _UserStateState extends State<UserStatewidget> {
  String username = "";
  UserModel model = const UserModel();
  void getData() {
    model = model.copyWith(
      username: widget.preferenceService.getUsername(),
      password: widget.preferenceService.getPassward(),
      email: widget.preferenceService.getEmail(),
      phoneNumber: widget.preferenceService.getPhoneNumber(),
    );
  }

  Future<void> setUsername(String username) async {
    await widget.preferenceService.setUsername(username);
    setState(() {
      model = model.copyWith(username: username);
    });
  }

  Future<void> setPassword(String password) async {
    await widget.preferenceService.setPassward(username);
    setState(() {
      model = model.copyWith(username: password);
    });
  }

  Future<void> setEmail(String email) async {
    await widget.preferenceService.setEmail(email);
    setState(() {
      model = model.copyWith(email: email);
    });
  }

  Future<void> setPhoneNumber(String phoneNumber) async {
    await widget.preferenceService.setPhoneNumber(phoneNumber);
    setState(() {
      model = model.copyWith(phoneNumber: phoneNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return UserState(
      model: model,
      setUsername: setUsername,
      setEmail: setEmail,
      setPassword: setPassword,
      setPhoneNumber: setPhoneNumber,
      getData: getData,
      child: widget.child,
    );
  }
}

class UserState extends InheritedWidget {
  const UserState({
    required this.setPassword,
    required this.setEmail,
    required this.setPhoneNumber,
    required this.getData,
    required this.model,
    required this.setUsername,
    required super.child,
    super.key,
  });
  final void Function() getData;

  final void Function(String) setUsername;
  final void Function(String) setPassword;
  final void Function(String) setEmail;
  final void Function(String) setPhoneNumber;
  final UserModel model;
  static UserState? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<UserState>();

  @override
  bool updateShouldNotify(covariant UserState oldWidget) {
    return model != oldWidget.model;
  }
}
