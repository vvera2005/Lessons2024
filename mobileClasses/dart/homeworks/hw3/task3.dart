import 'dart:io';

String reverse(String mstr) {
  List ml = mstr.split(" ");
  String newstr = "";
  for (var i = ml.length - 1; i >= 0; i--) {
    newstr = newstr + " " + ml[i];
  }
  return newstr;
}

void main() {
  print("Enter import statement: ");
  String mstr = stdin.readLineSync() ?? "";
  print(reverse(mstr));
}
