import 'dart:io';
import 'dart:convert';

String readFile(String filename) {
  File mf = File(filename);
  String readenFiles = mf.readAsStringSync();
  return readenFiles;
}

List<Map<String, dynamic>> decodeJson(String data) {
  List<dynamic> jsonList = jsonDecode(data);
  List<Map<String, dynamic>> resultList =
      jsonList.map((dynamic item) => item as Map<String, dynamic>).toList();
  return resultList;
}

// List<Map<String, dynamic>> UsersWithId(List<Map<String, dynamic>> users) {
//   for (var i = 0; i < users.length; i++) {
//     if (users[i]["id"] == null) {
//       users.removeAt(i);
//     }
//   }
//   return users;
// }

// void main() {
//   String data = readFile("/home/v/programing/dart/Classwork/file/users.json");
//   List<Map<String, dynamic>> users = decodeJson(data);
//   print(UsersWithId(users));
// // }
//  String input(String mstr){
//   stdout.write(mstr);
//   String a
//   }