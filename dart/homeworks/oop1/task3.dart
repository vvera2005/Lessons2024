// 3. Define an interface Flyable with a method fly(). Then create classes like Bird and Airplane implementing the Flyable interface.
abstract interface class Flyable {
  String fly();
}

class Bird implements Flyable {
  @override
  String fly() {
    return "I am flyinng";
  }
}

class Airplane implements Flyable {
  @override
  String fly() {
    return "My pilot is making me fly";
  }
}

void main() {
  Flyable bird = Bird();
  Flyable airplane = Airplane();
  print(bird.fly());
  print(airplane.fly());
}
