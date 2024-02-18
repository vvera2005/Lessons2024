// 2. Define a class Animal with a method makeSound(). Then create subclasses like Dog, Cat, and Cow overriding the makeSound() method to produce different sounds.

abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("HAf haf");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Myau myau");
  }
}

class Caw extends Animal {
  @override
  void makeSound() {
    print("Muuuuu muuuu");
  }
}

void main() {
  Animal cat = Cat();
  Animal dog = Dog();
  Animal caw = Caw();
  cat.makeSound();
  dog.makeSound();
  caw.makeSound();
}
