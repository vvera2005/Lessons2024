import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {this.height = 60,
      required this.monTap,
      this.weight = 315,
      this.hintext = "Login",
      this.textcolor = Colors.white,
      this.backgroundcolor = const Color(0xFF20C3AF),
      super.key});

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final VoidCallback monTap;
  final double height;
  final double weight;
  final String hintext;
  final Color backgroundcolor;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: monTap,
      child: Container(
        height: height,
        width: weight,
        key: _globalKey,
        decoration: BoxDecoration(color: backgroundcolor),
        child: Center(
          child: Text(hintext,
              style: TextStyle(
                color: textcolor,
                fontSize: 20,
              )),
        ),
      ),
    );
  }
}
