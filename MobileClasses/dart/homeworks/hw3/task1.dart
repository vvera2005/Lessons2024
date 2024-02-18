List<int> returnEven(List a) {
  List<int> even = [];
  for (int el in a) {
    if (el % 2 == 0) {
      even.add(el);
    }
  }
  return even;
}

void main() {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  print(returnEven(a));
}
