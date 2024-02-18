import 'dart:io';

String readFile() {
  File mf = File('input.txt'); // (1)
  String readenFiles = mf.readAsStringSync();
  return readenFiles;
}

void main() {
  print(readFile());
}
