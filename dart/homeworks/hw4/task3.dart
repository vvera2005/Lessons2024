import 'dart:io' show File, FileMode, IOSink;

String readFile(String filename) {
  File mf = File(filename); // (1)
  String readenFiles = mf.readAsStringSync();
  return readenFiles;
}

bool check(String filename) {
  File mfile = File(filename);
  return mfile.existsSync();
}

void writeContentIfExists(String filename, String content) {
  File file = File(filename);
  IOSink sink = file.openWrite(mode: FileMode.write);
  sink.write(content);
  sink.close();
}

void CreateAndWrite(String filename, String content) {
  File mfile = File(filename);
  mfile.writeAsString(content);
}

void main() {
  String cont = readFile('input.txt');
  bool filefound = check('output.txt');
  if (filefound) {
    writeContentIfExists('output.txt', cont);
  } else {
    CreateAndWrite('output.txt', cont);
  }
  print('done');
}
