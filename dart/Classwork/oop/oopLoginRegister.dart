import 'dart:convert';
import 'dart:io';

abstract interface class Auth {
  bool login(String username, String passward);
  bool register(String username, String passward);
}

class AuthImp implements Auth {
  final String username;
  final String passward;
  Map<String, dynamic> ReadFromFile(String path) {
    File file = File(path);
    String context = file.readAsStringSync();
    Map<String, dynamic> contextDecoted = jsonDecode(context);
    // List<Map<String, dynamic>> ml =
    //     contextDecoted as List<Map<String, dynamic>>;
    return contextDecoted;
  }

  void WriteToFile(Map<String, dynamic> ml, String path) {
    File file = File(path);
    String mlEncoded = json.encode(ml);
    file.writeAsString(mlEncoded);
  }

  bool login(String username, String passward) {
    Map<String, dynamic> data = ReadFromFile(
        "/home/v/programing/Lessons2024/dart/Classwork/oop/data.json");
    if (data["username"] == username && data["passward"] == passward) {
      print('Your login sucssed');
      return true;
    }
    return false;
  }

  bool register(String username, String passward) {
    Map<String, dynamic> data = ReadFromFile(
        "/home/v/programing/Lessons2024/dart/Classwork/oop/data.json");
    if (data["username"] == username) {
      print('This username is not available');
      return false;
    }

    WriteToFile({username: passward},
        "/home/v/programing/Lessons2024/dart/Classwork/oop/data.json");
    print("Done");
    return true;
  }

  AuthImp(this.username, this.passward);
}

void main() {
  Auth myauth = AuthImp("vera", "passward");
  print(myauth.register("veraaa", "passwaaard"));
}
