import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matule/presentation/pages/login_page.dart';
import 'package:ui_kit_07_01_2026/ui_kit_07_01_2026.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: MaterialApp(
        theme: ThemeData().copyWith(
          extensions: [CustomTheme(palette: LightPalette())],
        ),
        home: LoginPage(),
      ),
    );
  }
}
