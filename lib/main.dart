import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'core/colors.dart';
import 'core/theme/theme_controller.dart';
import 'features/carDesign1/presentation/views/car_design_one_view.dart';
import 'core/theme/theme_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await GetStorage.init();
  Get.put<ThemeService>(ThemeService());
  Get.put<ThemeController>(ThemeController()); // No arguments
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      rebuildFactor: (old, data) {
        return data.devicePixelRatio != old.devicePixelRatio;
      },
      builder: (context, child) {
        return GetBuilder<ThemeController>(
          builder: (themeController) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData.light(),
              darkTheme: ThemeData.dark(),
              themeMode: themeController.themeMode.value,
              initialRoute: '/',
              getPages: [
                GetPage(name: '/', page: () => CarDesignOneView()),
              ],
            );
          },
        );
      },
    );
  }
}
