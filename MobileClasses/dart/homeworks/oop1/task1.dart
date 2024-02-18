// 1. Create a base class Shape with methods area and perimeter. Then create subclasses like Rectangle and Circle inheriting from Shape and override the respective methods. Calculate area and perimeter for both classes.
import "dart:math" show pi;

abstract class Shape {
  area();
  perimetr();
}

class Rectangle extends Shape {
  int a;
  int b;
  Rectangle(this.a, this.b);
  @override
  area() {
    return a * b;
  }

  @override
  perimetr() {
    return 2 * (a + b);
  }
}

class Circle extends Shape {
  int r;
  Circle(this.r);
  @override
  area() {
    return r * r * pi;
  }
  @override
  perimetr() {
    return 2 * pi * r;
  }
}

void main() {
  Shape rect = Rectangle(7, 8);
  print(rect.area());
  print(rect.perimetr());
  Shape circle = Circle(5);
  print(circle.area());
  print(circle.perimetr());
}
