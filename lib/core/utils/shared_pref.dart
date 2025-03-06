import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static SharedPreferences? _prefs;

  /// ✅ تهيئة `SharedPreferences` (يجب استدعاؤها في `main.dart` قبل استخدام الكلاس)
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  /// ✅ حفظ قيمة `String`
  static Future<void> setString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  /// ✅ استرجاع قيمة `String`
  static String? getString(String key, {String? defaultValue}) {
    return _prefs?.getString(key) ?? defaultValue;
  }

  /// ✅ حذف التوكن عند تسجيل الخروج
  static Future<void> clearUserToken() async {
    await _prefs?.remove('user_token');
  }
}
