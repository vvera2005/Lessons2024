import 'package:first/db/preferences.dart';
import 'package:first/text_field_widget.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile(this.preferences, {super.key});
  final PreferencService preferences;
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset("assets/images/papik.png"),
            TextButton(onPressed: () {}, child: const Text("Change picture")),
            const SizedBox(height: 20),
            const Text("Username"),
            TextFieldWidget(
                controller: _usernameController,
                hintText: widget.preferences.getUsername(),
                validator: (String? value) {
                  if (value == null || value.length < 6) {
                    return "Please enter more than 5 characters";
                  }
                  return null;
                }),
            const SizedBox(
              height: 20,
            ),
            const Text("Email"),
            TextFieldWidget(
                hintText: widget.preferences.getEmail(),
                controller: _emailController,
                validator: (String? value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                          .hasMatch(value)) {
                    return "Please enter valid email";
                  }
                  return null;
                }),
            const SizedBox(
              height: 20,
            ),
            const Text("Phone number"),
            TextFieldWidget(
              controller: _phoneNumberController,
              hintText: widget.preferences.getPhoneNumber(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Password"),
            TextFieldWidget(
              validator: (String? value) {
                if (value == null || value.length < 5) {
                  return "Please enter more than 5 characters";
                }
                return null;
              },
              controller: _pass,
              hintText: widget.preferences.getPassward(),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  update();
                },
                child: Text("Update")),
          ],
        ),
      ),
    );
  }

  Future<void> update() async {
    try {
      print(_emailController.text);
      await widget.preferences.setUsername(
          getItem(_usernameController, widget.preferences.getUsername()!));
      await widget.preferences
          .setPassward(getItem(_pass, widget.preferences.getPassward()!));
      await widget.preferences
          .setEmail(getItem(_emailController, widget.preferences.getEmail()!));
      await widget.preferences.setPhoneNumber(getItem(
          _phoneNumberController, widget.preferences.getPhoneNumber()!));
      Navigator.of(context).pushNamed('/profile');
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  String getItem(TextEditingController controller, String value) {
    if (controller.text.isEmpty) {
      return value;
    }
    return controller.text;
  }
}
