// 4. Create a class MathUtils with static methods like add, subtract, multiply, and divide.

class MathUtils {
  int a;
  int b;
  MathUtils(this.a, this.b);
  num add() {
    return a + b;
  }

  num subtract() {
    return a - b;
  }

  num multiply() {
    return a * b;
  }

  num divide() {
    return a / b;
  }
}

void main() {
  MathUtils math = MathUtils(5, 6);
  print(math.add());
  print(math.subtract());
  print(math.multiply());
  print(math.divide());
}
