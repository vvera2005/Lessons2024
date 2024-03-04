import 'package:first/button_widget.dart';
import 'package:first/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign Up"),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 62,
                ),
                Image.asset("assets/images/Illustration.png", height: 141),
                const SizedBox(height: 54),
                SizedBox(
                  height: 466,
                  width: 315,
                  child: Column(children: <Widget>[
                    const TextFieldWidget(
                      hintText: "Enter email",
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const TextFieldWidget(
                      hintText: "Enter password",
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const TextFieldWidget(
                      hintText: "Confirm password",
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ButtonWidget(
                      monTap: () {},
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
                          Navigator.of(context).pushNamed('/signin');
                        },
                        child: RichText(
                          text: const TextSpan(
                              text: "Do you have an account? ",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF838391),
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Sign in",
                                    style: TextStyle(color: Color(0xffFFB19D)))
                              ]),
                        )),
                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}
