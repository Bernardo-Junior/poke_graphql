import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  String? _token;

  static const tokenKey = '@token';

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    _token = prefs.getString(tokenKey);

    return _token;
  }

  Future saveToken(String? token) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(tokenKey, token!);
    _token = token;
  }

  Future<bool> hasToken() async => await getToken() != null;

  Future clearToken() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove(tokenKey);
  }
}
