import 'package:car_design/core/theme/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ThemeModeDefault extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<ThemeController>(
            builder: (themeController) => AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: Switch(
                value: themeController.themeMode.value == ThemeMode.dark,
                onChanged: (value) {
                  themeController.toggleTheme();
                },
              ),
              switchInCurve: Curves.easeIn,
              switchOutCurve: Curves.easeOut,
              transitionBuilder: (child, animation) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
