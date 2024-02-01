import 'dart:io' show File;
import 'dart:convert';

String readFile(String filename) {
  File mf = File(filename);
  String readenFiles = mf.readAsStringSync();
  return readenFiles;
}

Map<String, dynamic> decodeJson(String data) {
  Map<String, dynamic> jsonMap = jsonDecode(data);
  return jsonMap;
}

void main() {
  String mdata = readFile('person.json');
  print(decodeJson(mdata));
}
