

import 'package:flutter_test/flutter_test.dart';
import 'package:get_storage/get_storage.dart';

import '../core/theme/theme_service.dart';

void main() {
  late ThemeService themeService;
  late GetStorage getStorage;

  setUpAll(() async {
    await GetStorage.init();
    getStorage = GetStorage();
    themeService = ThemeService();
  });

  test('Initial theme mode should be light', () {
    expect(themeService.getThemeFromStorage(), null);
  });

  test('Save and retrieve dark theme', () {
    themeService.saveThemeToStorage('dark');
    expect(themeService.getThemeFromStorage(), 'dark');
  });

  test('Save and retrieve light theme', () {
    themeService.saveThemeToStorage('light');
    expect(themeService.getThemeFromStorage(), 'light');
  });

  tearDownAll(() async {
    await getStorage.erase();
  });
}
