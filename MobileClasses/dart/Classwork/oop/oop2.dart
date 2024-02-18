abstract interface class Vehicle {
  void engine();
  void start() {
    print('started');
  }
}

class Car extends Vehicle {
  void engine() {
    print('Car started');
  }
}

class Bus extends Vehicle {
  void engine() {
    print('Bus started');
  }

  int PessangerSitCount() => 100;
}

void Startengine(Vehicle vehicle) {
  vehicle.engine();
}

void main() {
  Vehicle car = Car();
  Startengine(car);
  Vehicle bus = Bus();
  bus.engine();
  if (bus is Bus) {
    print(bus.PessangerSitCount());
  }
}

