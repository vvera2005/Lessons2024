import 'dart:io';

double calculateBMI(double? weight, double? height) {
  if (weight == null || height == null || height <= 0 || weight <= 0) {
    print("Invalid input for weight or height. Unable to calculate BMI.");
    return 0.0;
  }
  return weight / (height * height);
}

void main() {
  print("Enter your name:");
  String? name = stdin.readLineSync();

  print("Enter your weight (in kilograms):");
  double? weight = double.tryParse(stdin.readLineSync()!);

  print("Enter your height (in meters):");
  double? height = double.tryParse(stdin.readLineSync()!);

  double bmi = calculateBMI(weight, height);
  print("Hello, $name. Your BMI is $bmi.");
}

