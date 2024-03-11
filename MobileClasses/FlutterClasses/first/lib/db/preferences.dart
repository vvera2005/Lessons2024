import 'package:shared_preferences/shared_preferences.dart';

class PreferencService {
  final SharedPreferences preferences;
  const PreferencService(this.preferences);
  Future<void> setUsername(String username) async {
    await preferences.setString("username", username);
  }

  Future<void> setPassward(String passward) async {
    await preferences.setString("passward", passward);
  }

  Future<void> setEmail(String email) async {
    await preferences.setString("email", email);
  }

  Future<void> setPhoneNumber(String phoneNumber) async {
    await preferences.setString("phoneNumber", phoneNumber);
  }

  String? getUsername() => preferences.getString("username");
  String? getPassward() => preferences.getString("passward");
  String? getEmail() => preferences.getString("email");
  String? getPhoneNumber() => preferences.getString("phoneNumber");
}
