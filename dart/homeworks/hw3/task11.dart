void main() {
  List<dynamic> ml = [];
  List<dynamic> newl = [];
  for (var i = 1; i < 101; i++) {
    ml.add(i);
  }
  for (var el in ml) {
    if (el % 2 != 0) {
      newl.add(el);
    }
  }
  print(newl);
}
