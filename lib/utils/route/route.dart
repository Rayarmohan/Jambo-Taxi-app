import 'package:get/get.dart';
import 'package:jambotaxi/features/help_center/help_center_screen.dart';

import 'package:jambotaxi/features/login/login_screen.dart';
import 'package:jambotaxi/features/on_board/on_board_screen.dart';
import 'package:jambotaxi/features/otp_verify/otp_verify_screen.dart';
import 'package:jambotaxi/features/privacy_policy/privacy_screen.dart';
import 'package:jambotaxi/features/profile/profile_screen.dart';
import 'package:jambotaxi/features/settings/settings_screen.dart';
import 'package:jambotaxi/features/update_document/update_document_screen.dart';
import 'package:jambotaxi/utils/route/route_name.dart';

appRoutes() => [
      GetPage(name: AppRoute.onboard, page: () => OnBoardScreen()),
      GetPage(name: AppRoute.login, page: () => const LoginScreen()),
      GetPage(name: AppRoute.otpscreen, page: () => const OTPScreen()),
      GetPage(name: AppRoute.helpcenter, page: () => const HelpCenter()),
      GetPage(name: AppRoute.privacy, page: () => const PrivacyScreen()),
      GetPage(name: AppRoute.updatedocument, page: () => const UpdateDocument()),
      GetPage(name: AppRoute.settings, page: () => const Settings()),
      GetPage(name: AppRoute.profile, page: () => const ProfileScreen()),
    ];
