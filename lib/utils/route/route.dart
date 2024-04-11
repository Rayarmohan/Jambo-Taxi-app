import 'package:get/get.dart';
import 'package:jambotaxi/features/Ride/navigate_userlocation.dart';
import 'package:jambotaxi/features/Ride/ride_request.dart';
import 'package:jambotaxi/features/bottom_navigation/bottom_navigation.dart';
import 'package:jambotaxi/features/home/home.dart';

import 'package:jambotaxi/features/login/login_screen.dart';
import 'package:jambotaxi/features/on_board/on_board_screen.dart';
import 'package:jambotaxi/features/otp_verify/otp_verify_screen.dart';
import 'package:jambotaxi/utils/route/route_name.dart';

appRoutes() => [
      GetPage(name: AppRoute.onboard, page: () => const OnBoardScreen()),
      GetPage(name: AppRoute.login, page: () => const LoginScreen()),
      GetPage(name: AppRoute.otpscreen, page: () => const OTPScreen()),
      GetPage(name: AppRoute.home, page: () => const Home()),
      GetPage(name: AppRoute.bottom_nav, page: () =>  const Bottom_Navigation()),
      GetPage(name: AppRoute.ride_request, page: () =>  const Ride_Request()),
      GetPage(name: AppRoute.navigate_userLocation, page: () =>  const NavigateUserLocation()),
    ];
