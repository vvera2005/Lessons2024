import 'dart:convert';
import 'dart:io';

List<dynamic> ReadFromFile(String path) {
  File file = File(path);
  String content = file.readAsStringSync();
  List<dynamic> ml = jsonDecode(content) as List<dynamic>;
  return ml;
}

Stream<String> userData(List<dynamic> data) async* {
  for (var el in data) {
    Map<String, dynamic> mmap = el as Map<String, dynamic>;
    String FullName = "${mmap["firstname"]} ${mmap["lastname"]} ";
    yield FullName;
  }
}

void main() async {
  List<dynamic> ml = ReadFromFile("file/users.json");
  Stream<String> mstream = userData(ml);
  mstream.listen((event) {
    print(event);
  });
}
