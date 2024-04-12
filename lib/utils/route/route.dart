import 'package:get/get.dart';
import 'package:jambotaxi/features/Registration/registration_screen.dart';
import 'package:jambotaxi/features/Ride/ride_request.dart';
import 'package:jambotaxi/features/booking_pages/booking_tab.dart';
import 'package:jambotaxi/features/booking_pages/prebooking_tab.dart';
import 'package:jambotaxi/features/bottom_navigation/bottom_navigation.dart';
import 'package:jambotaxi/features/cars/cars_screen.dart';
import 'package:jambotaxi/features/chat/chat_screen.dart';
import 'package:jambotaxi/features/collect_cash/collect_cash.dart';
import 'package:jambotaxi/features/earnings/earnings.dart';
import 'package:jambotaxi/features/enable_location/enable_location.dart';
import 'package:jambotaxi/features/help_center/help_center_screen.dart';
import 'package:jambotaxi/features/home/home.dart';

import 'package:jambotaxi/features/login/login_screen.dart';
import 'package:jambotaxi/features/notification/notification_screen.dart';
import 'package:jambotaxi/features/on_board/on_board_screen.dart';
import 'package:jambotaxi/features/otp_verify/otp_verify_screen.dart';
import 'package:jambotaxi/features/privacy_policy/privacy_screen.dart';
import 'package:jambotaxi/features/profile/profile_screen.dart';
import 'package:jambotaxi/features/profilesettings/profilesettings_screen.dart';
import 'package:jambotaxi/features/rating/rating_screen.dart';
import 'package:jambotaxi/features/update_document/update_document_screen.dart';
import 'package:jambotaxi/features/welcome/nested_screens/profilepicture_screen.dart';

import 'package:jambotaxi/utils/route/route_name.dart';

appRoutes() => [
      GetPage(name: AppRoute.onboard, page: () => const OnBoardScreen()),
      GetPage(name: AppRoute.login, page: () => const LoginScreen()),
      GetPage(name: AppRoute.otpscreen, page: () => const OTPScreen()),
      GetPage(name: AppRoute.helpcenter, page: () => const HelpCenter()),
      GetPage(name: AppRoute.privacy, page: () => const PrivacyScreen()),
      GetPage(
          name: AppRoute.updatedocument, page: () => const UpdateDocument()),
      GetPage(name: AppRoute.settings, page: () => const Settings()),
      GetPage(
          name: AppRoute.updatedocument, page: () => const UpdateDocument()),
      GetPage(
          name: AppRoute.registrationScreen,
          page: () => const RegistartionScreen()),
      GetPage(
          name: AppRoute.profilrePictureScreen,
          page: () => const ProfilePictureScreen()),
      GetPage(name: AppRoute.rating, page: () => const RatingScreen()),
      GetPage(name: AppRoute.collectcash, page: () => const CollectCash()),
      GetPage(name: AppRoute.chatscreen, page: () => const ChatScreen()),
      GetPage(
          name: AppRoute.notification, page: () => const NotificationScreen()),
          GetPage(
          name: AppRoute.enablelocation, page: () => const EnableLocationScreen()),
          GetPage(
          name: AppRoute.earnings, page: () => const EarningScreen()),

      GetPage(
          name: AppRoute.prebookingcompletescreen,
          page: () => const PrebookingComplete()),
      GetPage(
          name: AppRoute.bookingcompletescreen,
          page: () => const BookingComplete()),
      GetPage(name: AppRoute.home, page: () => const Home()),
      GetPage(name: AppRoute.bottom_nav, page: () => const Bottom_Navigation()),
      GetPage(name: AppRoute.ride_request, page: () => const Ride_Request()),
      GetPage(name: AppRoute.cars_screen, page: () => const CarsScreen()),
    ];
