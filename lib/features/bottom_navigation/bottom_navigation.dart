// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/features/Ride/ride_request.dart';
import 'package:jambotaxi/features/bottom_navigation/bottom_navigation_controller.dart';
import 'package:jambotaxi/features/home/home.dart';
import 'package:jambotaxi/features/login/login.dart';
import 'package:jambotaxi/features/login/login_screen.dart';
import 'package:jambotaxi/features/profile/profile_screen.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';

class Bottom_Navigation extends StatelessWidget {
  final TextStyle selectedLabelStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

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
            children: [
              Home(),
              Ride_Request(),
              Home(),
              LoginScreen(),
              ProfileScreen()
            ],
          )),
    ));
  }

  buildBottomNavigationMenu(context, bottomNavigationController) {
    return Obx(() => BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          onTap: bottomNavigationController.changeTabIndex,
          currentIndex: bottomNavigationController.tabIndex.value,
          selectedLabelStyle: selectedLabelStyle,
          selectedItemColor:
              AppColors.primeryColor, // Change this to your desired color
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(bottom: 7),
                child: const Icon(Icons.home),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(bottom: 7),
                child: const Icon(
                  Icons.bar_chart_outlined,
                ),
              ),
              label: 'Earnings',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(bottom: 7),
                child: const Icon(
                  Icons.history_outlined,
                ),
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(bottom: 7),
                child: const Icon(
                  Icons.notifications,
                ),
              ),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(bottom: 7),
                child: const Icon(
                  Icons.person,
                ),
              ),
              label: 'Profile',
            ),
          ],
        ));
  }
}
