import 'dart:math';

List<int> randomsumbers(int cnt, max) {
  Random random = Random();
  List<int> ml = List.generate(cnt, (index) {
    return random.nextInt(max);
  });
  return ml;
}

void main() {
  List<int> ml = randomsumbers(100, 10);
  print(ml.toSet().toList());
}
