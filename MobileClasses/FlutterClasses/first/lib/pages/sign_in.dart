import 'package:first/button_widget.dart';
import 'package:first/db/preferences.dart';
import 'package:first/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signin extends StatefulWidget {
  const Signin(this.preferences, {super.key});
  final PreferencService preferences;
  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  Color color = Colors.white;
  bool darkMode = false;
  String? username;
  String? passward;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void initState() {
    username = widget.preferences.getUsername();
    passward = widget.preferences.getPassward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text("Sign in"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            const SizedBox(height: 54),
            Image.asset(
              "assets/images/matit1.png",
              height: 145,
            ),
            const SizedBox(height: 54),
            SizedBox(
              width: 315,
              child: Column(
                children: <Widget>[
                  TextFieldWidget(
                    hintText: "Username",
                    controller: _usernameController,
                    validator: (String? value) {
                      if (value != username) {
                        return "Invalid username";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFieldWidget(
                    hintText: "Password",
                    obscureText: true,
                    controller: _passwordController,
                    validator: (String? value) {
                      if (value != passward) {
                        return "Invalis password";
                      }
                      return null;
                    },
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: null,
                          child: Text(
                            "Forgot your password?",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF838391)),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ButtonWidget(
                    monTap: () {
                      if (_usernameController.text == username &&
                          _passwordController.text == passward) {
                        Navigator.of(context).pushNamed('/profile');
                      }
                    },
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "or",
                    style: TextStyle(color: Color(0xFF838391), fontSize: 16),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        TextButton(
                            onPressed: () {},
                            child: SvgPicture.asset(
                              "assets/icons/fb.svg",
                              height: 40,
                            )),
                        TextButton(
                            onPressed: () {},
                            child: SvgPicture.asset(
                              "assets/icons/linkedin.svg",
                              height: 40,
                            )),
                        TextButton(
                            onPressed: () {},
                            child: SvgPicture.asset(
                              "assets/icons/twitter.svg",
                              height: 40,
                            )),
                      ]),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/signup');
                      },
                      child: RichText(
                        text: const TextSpan(
                            text: "Don't have an account? ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF838391),
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "Sign up",
                                  style: TextStyle(color: Color(0xffFFB19D)))
                            ]),
                      )),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
