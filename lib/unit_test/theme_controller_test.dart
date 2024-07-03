
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../core/theme/theme_controller.dart';
import '../core/theme/theme_service.dart';

void main() {
  setUpAll(() async {
    await GetStorage.init();
    Get.put<ThemeService>(ThemeService());
    Get.put<ThemeController>(ThemeController());
  });

  group('ThemeController', () {
    test('Initial theme mode should be light', () {
      ThemeController themeController = Get.find<ThemeController>();
      expect(themeController.themeMode.value, ThemeMode.light);
    });

    test('Toggle theme from light to dark', () {
      ThemeController themeController = Get.find<ThemeController>();
      themeController.toggleTheme();
      expect(themeController.themeMode.value, ThemeMode.dark);
    });

    test('Toggle theme from dark to light', () {
      ThemeController themeController = Get.find<ThemeController>();
      themeController.toggleTheme(); // First toggle to dark
      themeController.toggleTheme(); // Second toggle to light
      expect(themeController.themeMode.value, ThemeMode.light);
    });
  });

  tearDownAll(() {
    Get.reset();
  });
}
