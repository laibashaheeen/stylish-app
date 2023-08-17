
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/home/landing_page.dart';

void main() {
 
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setSystemUIOverlayStyle(AppColors.defaultOverlay);
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: MaterialApp(
            title: 'Stylish',
            debugShowCheckedModeBanner: false,
            scrollBehavior: const ScrollBehavior().copyWith(overscroll: false),
            home: const LandingPage(),
          ),
        );
      },
    );
  }
}
