import 'package:shared_preferences/shared_preferences.dart';

class PreferencService {
  final SharedPreferences preferences;
  const PreferencService(this.preferences);
  Future<void> setmode(bool mode) async {
    await preferences.setBool("darkMode", mode);
  }

  bool? getMode() => preferences.getBool("darkMode");
}
