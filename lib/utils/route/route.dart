import 'package:get/get.dart';

import 'package:jambotaxi/features/login/login_screen.dart';
import 'package:jambotaxi/features/on_board/on_board_screen.dart';
import 'package:jambotaxi/features/otp_verify/otp_verify_screen.dart';
import 'package:jambotaxi/features/registration/registration_screen.dart';
import 'package:jambotaxi/utils/route/route_name.dart';

appRoutes() => [
      GetPage(name: AppRoute.onboard, page: () => OnBoardScreen()),
      GetPage(name: AppRoute.login, page: () => const LoginScreen()),
      GetPage(name: AppRoute.otpscreen, page: () => const OTPScreen()),
      GetPage(
          name: AppRoute.registrationScreen,
          page: () => const RegistartionScreen()),
    ];
