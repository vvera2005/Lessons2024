import 'package:first/button_widget.dart';
import 'package:first/db/preferences.dart';
import 'package:first/text_field_widget.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup(this.preferencesService, {super.key});

  final PreferencService preferencesService;

  @override
  State<Signup> createState() => _SignUpState();
}

class _SignUpState extends State<Signup> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign up"),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Image.asset(
                "assets/images/Illustration.png",
                height: 141,
              ),
              const SizedBox(height: 30),
              TextFieldWidget(
                  hintText: "Enter email",
                  controller: _emailController,
                  validator: (String? value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                            .hasMatch(value)) {
                      return "Please enter valid email";
                    }
                    return null;
                  }),
              const SizedBox(height: 20),
              TextFieldWidget(
                hintText: "Phone number",
                controller: _phoneNumberController,
              ),
              const SizedBox(height: 20),
              TextFieldWidget(
                  hintText: "Username",
                  controller: _usernameController,
                  validator: (String? value) {
                    if (value == null || value.length < 6) {
                      return "Please enter more than 5 characters";
                    }
                    return null;
                  }),
              const SizedBox(height: 20),
              TextFieldWidget(
                controller: _pass,
                validator: (String? value) {
                  if (value!.isEmpty || value.length < 6) {
                    return "Please enter minimum 6 character";
                  }
                  return null;
                },
                obscureText: true,
                hintText: "Enter password",
              ),
              const SizedBox(height: 20),
              TextFieldWidget(
                validator: (String? value) {
                  if (value != _pass.text) {
                    return "Password is not the same";
                  }
                  return null;
                },
                hintText: "Confirm password",
                obscureText: true,
              ),
              const SizedBox(height: 30),
              ButtonWidget(
                hintext: "Sign up",
                monTap: _signUp,
              ),
              const SizedBox(height: 20),
              const Text("or",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/signin');
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                          color: Color.fromARGB(130, 177, 1, 1),
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(130, 177, 1, 1)),
                    ))
              ])
            ],
          )),
        ));
  }

  Future<void> _signUp() async {
    try {
      print(_emailController.text);
      await widget.preferencesService.setUsername(_usernameController.text);
      await widget.preferencesService.setPassward(_pass.text);
      await widget.preferencesService.setEmail(_emailController.text);
      await widget.preferencesService
          .setPhoneNumber(_phoneNumberController.text);

      Navigator.of(context).pushNamed('/profile');
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
