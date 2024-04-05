import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    required this.btntxt,
    required this.btncolor,
    required this.txtColor,
    required this.calculator,
  });
  final String btntxt;
  final Color btncolor;
  final Color txtColor;
  final void Function() calculator;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: calculator,
      child: Container(
        height: 80,
        width: 88,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: btncolor),
        child: Center(
          child: Text(
            btntxt,
            style: TextStyle(color: txtColor, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
