import 'package:calculator/models/button_model.dart';
import 'package:calculator/widgets/circle_button.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String number1 = "";

  String operand = "";

  String number2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(8),
              child: Text(
                "$number1$operand$number2".isEmpty
                    ? "0"
                    : "$number1$operand$number2",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                ),
                textAlign: TextAlign.end,
              ),
            ),
          ),
          Expanded(
              flex: 4,
              child: GridView.builder(
                itemCount: 16,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return CircleButton(
                      calculator: () => onBtnTap(Btn.buttonValues[index]),
                      btntxt: Btn.buttonValues[index],
                      btncolor: getBtnColor(Btn.buttonValues[index]),
                      txtColor: getTxtColor(Btn.buttonValues[index]));
                },
              )),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () => onBtnTap(Btn.n0),
                  child: Container(
                    margin: const EdgeInsets.all(5.0),
                    height: 80,
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xff333333)),
                    child: const Center(
                      child: Text(
                        "0",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),
                ),
                CircleButton(
                    calculator: () => onBtnTap(Btn.dot),
                    btntxt: Btn.dot,
                    btncolor: getBtnColor(Btn.dot),
                    txtColor: getTxtColor(Btn.dot)),
                CircleButton(
                    calculator: () => onBtnTap(Btn.calculate),
                    btntxt: Btn.calculate,
                    btncolor: getBtnColor(Btn.calculate),
                    txtColor: getTxtColor(Btn.calculate)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onBtnTap(String value) {
    if (value == Btn.del) {
      delete();
      return;
    }

    if (value == Btn.clr) {
      clearAll();
      return;
    }

    if (value == Btn.per) {
      convertToPercentage();
      return;
    }

    if (value == Btn.calculate) {
      calculate();
      return;
    }

    appendValue(value);
  }

  void calculate() {
    if (number1.isEmpty) return;
    if (operand.isEmpty) return;
    if (number2.isEmpty) return;

    final double num1 = double.parse(number1);
    final double num2 = double.parse(number2);

    var result = 0.0;
    switch (operand) {
      case Btn.add:
        result = num1 + num2;
        break;
      case Btn.subtract:
        result = num1 - num2;
        break;
      case Btn.multiply:
        result = num1 * num2;
        break;
      case Btn.divide:
        result = num1 / num2;
        break;
      default:
    }

    setState(() {
      number1 = result.toString();
      operand = "";
      number2 = "";
    });
  }

  void convertToPercentage() {
    if (number1.isNotEmpty && operand.isNotEmpty && number2.isNotEmpty) {
      calculate();
    }
    if (operand.isNotEmpty) {
      return;
    }

    final number = double.parse(number1);
    setState(() {
      number1 = "${(number / 100)}";
      operand = "";
      number2 = "";
    });
  }

  void clearAll() {
    setState(() {
      number1 = "";
      operand = "";
      number2 = "";
    });
  }

  // delete one from the end
  void delete() {
    if (number2.isNotEmpty) {
      number2 = number2.substring(0, number2.length - 1);
    } else if (operand.isNotEmpty) {
      operand = "";
    } else if (number1.isNotEmpty) {
      number1 = number1.substring(0, number1.length - 1);
    }

    setState(() {});
  }

  void appendValue(String value) {
    if (value != Btn.dot && int.tryParse(value) == null) {
      if (operand.isNotEmpty && number2.isNotEmpty) {
        calculate();
      }
      operand = value;
    } else if (number1.isEmpty || operand.isEmpty) {
      if (value == Btn.dot && number1.contains(Btn.dot)) return;
      if (value == Btn.dot && (number1.isEmpty || number1 == Btn.n0)) {
        value = "0.";
      }
      number1 += value;
    } else if (number2.isEmpty || operand.isNotEmpty) {
      if (value == Btn.dot && number2.contains(Btn.dot)) return;
      if (value == Btn.dot && (number2.isEmpty || number2 == Btn.n0)) {
        // number1 = "" | "0"
        value = "0.";
      }
      number2 += value;
    }

    setState(() {});
  }

  Color getBtnColor(value) {
    return [Btn.del, Btn.clr, Btn.per].contains(value)
        ? const Color(0xffA5A5A5)
        : [
            Btn.multiply,
            Btn.add,
            Btn.subtract,
            Btn.divide,
            Btn.calculate,
          ].contains(value)
            ? const Color(0xffF1A33B)
            : const Color(0xff333333);
  }

  Color getTxtColor(value) {
    return [Btn.del, Btn.clr, Btn.per].contains(value)
        ? Colors.black
        : Colors.white;
  }
}
