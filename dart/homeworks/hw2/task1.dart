void performOperation(num? Function(num?, num?, String?) operation) {
  num? result = operation(5, 6, "+");
  if (result != null) {
    print('Result: $result');
  } else {
    print('Error: Unable to perform the operation.');
  }
}

num? calculator(num? a, num? b, String? sign) {
  if (a == null || b == null || sign == null) {
    print("Error: Invalid input");
    return null;
  }

  switch (sign) {
    case "+":
      return a + b;
    case "-":
      return a - b;
    case "*":
      return a * b;
    case "/":
      if (b != 0) {
        return a / b;
      } else {
        print("Error: Division by zero");
        return null;
      }
    default:
      print("Error: Invalid operator");
      return null;
  }
}

void main() {
  performOperation(calculator);
}
