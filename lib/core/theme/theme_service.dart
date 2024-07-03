/*


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService extends GetxController {
  final _storage = GetStorage();
  Rx<ThemeMode> themeMode = ThemeMode.light.obs;

  @override
  void onInit() {
    super.onInit();
    String? storedTheme = _storage.read('theme');
    if (storedTheme == 'dark') {
      themeMode.value = ThemeMode.dark;
    }
  }

  void toggleTheme() {
    if (themeMode.value == ThemeMode.light) {
      themeMode.value = ThemeMode.dark;
      _storage.write('theme', 'dark');
    } else {
      themeMode.value = ThemeMode.light;
      _storage.write('theme', 'light');
    }
    update();
  }
}*/
// lib/services/theme_service.dart

import 'package:get_storage/get_storage.dart';

class ThemeService {
  final _storage = GetStorage();

  String? getThemeFromStorage() {
    return _storage.read('theme');
  }

  void saveThemeToStorage(String theme) {
    _storage.write('theme', theme);
  }
}
