import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trend_style_store/src/modules/authentication/views/onboarding.dart';
import 'package:trend_style_store/src/utils/theme/theme.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, index) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        home: const OnBoardingScreen(), // ProductDetailScreen(),
      ),
    );
  }
}
