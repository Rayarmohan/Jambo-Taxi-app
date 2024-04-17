import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/features/Ride/ride_request.dart';
import 'package:jambotaxi/features/bottom_navigation/bottom_navigation.dart';
import 'package:jambotaxi/features/earnings/earnings.dart';
import 'package:jambotaxi/features/home/home.dart';
import 'package:jambotaxi/features/otp/ask_forotp.dart';
import 'package:jambotaxi/features/profile/editprofile_screen.dart';
import 'package:jambotaxi/utils/core/theme/app_theme.dart';
import 'package:jambotaxi/utils/route/route.dart';
import 'package:jambotaxi/utils/route/route_name.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) => GetMaterialApp(
        theme: AppTheme.appTheme,
        debugShowCheckedModeBanner: false,
        title: 'jambotaxiapp',
        home: EarningScreen(),
        // initialRoute: AppRoute.onboard,
        getPages: appRoutes(),
      ),
    );
  }
}
