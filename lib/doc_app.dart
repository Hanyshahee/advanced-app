import 'package:advancedapp/core/routing/routers.dart';
import 'package:advancedapp/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Doc App',
          theme: ThemeData(primaryColor: ColorsManger.minBlue,
          scaffoldBackgroundColor: Colors.white),
          debugShowCheckedModeBanner: false,
          routerConfig:Approuter.router
        );
      },
    );
  }
}
