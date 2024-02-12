import 'dart:io';

void writeToFile(String text, String filename) {
  File mfile = File(filename);
  mfile.writeAsString(text);
}

void main() {
  writeToFile("hello code", "mf.txt");
  File('mf.txt').readAsString().then((String contents) {
    print(contents);
  });
}
