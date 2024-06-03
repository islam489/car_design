import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/colors.dart';
import 'features/carDesign1/presentation/views/car_design_one_view.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        useInheritedMediaQuery: true,
        rebuildFactor: (old, data) {
          return data.devicePixelRatio != old.devicePixelRatio;
        },
        builder: ((context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
              primarySwatch: kPrimSwatch,
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                selectedItemColor: kPrimSwatch,
                backgroundColor: kGreen,
              ),
            ),
            home:const CarDesignOneView()
          );}
        )
    );
  }
}