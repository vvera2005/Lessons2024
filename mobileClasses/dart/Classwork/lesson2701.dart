// extension ExtentionOnList on List<String> {
//   getOrNull(bool Function(String) check) {
//     for (var el in this) {
//       if (check(el) == true) {
//         return el;
//       }
//     }
//     return null;
//   }
// }

// void main() {
//   List<String> ml = ["Vera", "sos", "something"];
//   print(ml.getOrNull((item) => item == "sxh"));
// }

void main() {
  String mstr = "";
  String mytry = "Hello";
  for (String el in mytry.split('')) {
    mstr = el + mstr;
  }
  print(mstr);
}
