import 'package:get/get.dart';
import 'package:jambotaxi/features/chat/chat_screen.dart';
import 'package:jambotaxi/features/collect_cash/collect_cash.dart';

import 'package:jambotaxi/features/login/login_screen.dart';
import 'package:jambotaxi/features/notification/notification_screen.dart';
import 'package:jambotaxi/features/on_board/on_board_screen.dart';
import 'package:jambotaxi/features/otp_verify/otp_verify_screen.dart';
import 'package:jambotaxi/features/rating/rating_screen.dart';
import 'package:jambotaxi/utils/route/route_name.dart';

appRoutes() => [
      GetPage(name: AppRoute.onboard, page: () => const OnBoardScreen()),
      GetPage(name: AppRoute.login, page: () => const LoginScreen()),
      GetPage(name: AppRoute.otpscreen, page: () => const OTPScreen()),
      GetPage(name: AppRoute.rating,page: () =>   const RatingScreen()),
      GetPage(name: AppRoute.collectcash,page: () =>   const CollectCash()),
      GetPage(name: AppRoute.chatscreen,page: () =>   const ChatScreen()),
      GetPage(name: AppRoute.notification,page: () =>   const NotificationScreen()),
      

    ];
