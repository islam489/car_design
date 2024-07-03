
import 'package:car_design/core/theme/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final ThemeService _themeService = ThemeService();
  Rx<ThemeMode> themeMode = ThemeMode.light.obs;

  @override
  void onInit() {
    super.onInit();
    String? storedTheme = _themeService.getThemeFromStorage();
    if (storedTheme == 'dark') {
      themeMode.value = ThemeMode.dark;
    }
  }

  void toggleTheme() {
    if (themeMode.value == ThemeMode.light) {
      themeMode.value = ThemeMode.dark;
      _themeService.saveThemeToStorage('dark');
    } else {
      themeMode.value = ThemeMode.light;
      _themeService.saveThemeToStorage('light');
    }
    update();
  }
}
