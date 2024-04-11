// ignore_for_file: camel_case_types

import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/features/Ride/arrived_userlocation.dart';
import 'package:jambotaxi/features/Ride/navigate_userlocation.dart';
import 'package:jambotaxi/features/Ride/ride_request.dart';
import 'package:jambotaxi/features/bottom_navigation/bottom_navigation_controller.dart';
import 'package:jambotaxi/features/home/home.dart';
import 'package:jambotaxi/features/login/login.dart';
import 'package:jambotaxi/features/login/login_screen.dart';
import 'package:jambotaxi/features/otp/ask_forotp.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';

class Bottom_Navigation extends StatelessWidget {
  final TextStyle selectedLabelStyle =
      const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  const Bottom_Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavigationController bottomNavigationController =
        Get.put(BottomNavigationController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar:
          buildBottomNavigationMenu(context, bottomNavigationController),
      body: Obx(() => IndexedStack(
            index: bottomNavigationController.tabIndex.value,
            children: const [
              Home(),
              Ride_Request(),
              NavigateUserLocation(),
              Arrived_Userlocation(),
              AskForOtp()
            ],
          )),
    ));
  }
    buildBottomNavigationMenu(context, bottomNavigationController) {
    return Obx(() => 
    CustomLineIndicatorBottomNavbar(
                    selectedColor: AppColors.primeryColor,
                    unSelectedColor: Colors.grey,
                    backgroundColor: Colors.white,
                    currentIndex: bottomNavigationController.tabIndex.value,
                    onTap: bottomNavigationController.changeTabIndex,
                    enableLineIndicator: true,
                    lineIndicatorWidth: 3,
                    indicatorType: IndicatorType.bottom,
                    // gradient: LinearGradient(
                    //   colors: kGradients,
                    // ),

                    customBottomBarItems: [
                    CustomBottomBarItems(
                        label: 'Home',
                        icon: Icons.home,
                    ),
                    CustomBottomBarItems(
                        label: 'Earnings',
                        icon: Icons.bar_chart_outlined,
                    ),
                    CustomBottomBarItems(
                        label: 'History', icon: Icons.history_outlined),
                    CustomBottomBarItems(
                        label: 'Notification',
                        icon: Icons.notifications,
                    ),
                    CustomBottomBarItems(
                        label: 'Profile',
                        icon: Icons.person,
                    ),
                    ],
                ),
                );
  }
}
