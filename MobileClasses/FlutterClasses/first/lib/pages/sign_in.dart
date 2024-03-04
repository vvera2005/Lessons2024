import 'package:first/button_widget.dart';
import 'package:first/db/preferences.dart';
import 'package:first/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signin extends StatefulWidget {
  const Signin(this.preferences, {this.darkMode = false, super.key});
  final bool darkMode;
  final PreferencService preferences;
  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  Color color = Colors.white;
  bool darkMode = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    darkMode = widget.preferences.getMode() ?? false;
    if (darkMode) {
      color = Colors.black;
    } else {
      color = Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text("Sign in"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () async {
              widget.preferences.setmode(!darkMode);
              setState(() {
                if (darkMode == true) {
                  color = Colors.black;
                } else {
                  color = Colors.white;
                }
              });
            },
            icon: const Icon(Icons.sunny)),
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
              height: 466,
              width: 315,
              child: Column(
                children: <Widget>[
                  const TextFieldWidget(
                    hintText: "Username",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const TextFieldWidget(
                    hintText: "Passward",
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
                      Navigator.of(context).pushNamed('/profile');
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
