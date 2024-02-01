void main() {
  List<int> ml = [18, -7, 8, 56, 23, 0, 14, -9, 0, 66, -8, 77, 0];
  int minus = 0;
  int plus = 0;
  int zero = 0;
  for (var el in ml) {
    if (el < 0) {
      minus += 1;
    } else if (el > 0) {
      plus += 1;
    } else {
      zero += 1;
    }
  }
  print("Numbers that are plus: $plus minus: $minus and zeros: $zero");
}
