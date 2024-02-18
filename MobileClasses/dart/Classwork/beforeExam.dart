import "dart:math";
import "dart:async";

// Future<List<int>> Randomnumbers(n) async {
//   List<int> ml = [];
//   Random random = Random();
//   for (var i = 0; i < n; i++) {
//     await Future.delayed(Duration(seconds: 1));
//     ml.add(random.nextInt(110));
//   }
//   return ml;
// }

Stream<int> Randomnumbers(n) async* {
  Random random = Random();
  for (var i = 0; i < n; i++) {
    yield random.nextInt(100);
  }
}

void main() async {
  List<int> ml = [];
  Randomnumbers(10).listen((event) {
    ml.add(event);
  });
  print(ml);
}
