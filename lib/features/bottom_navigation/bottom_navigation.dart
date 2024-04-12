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

class BottomNavigation extends StatelessWidget {
  final TextStyle selectedLabelStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavigationController bottomNavigationController =
        Get.put(BottomNavigationController());
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar:
            buildBottomNavigationMenu(context, bottomNavigationController),
        body: Obx(
          () => IndexedStack(
            index: bottomNavigationController.tabIndex.value,
            children: [
              Home(),
              Ride_Request(),
              Home(),
              LoginScreen(),
              ProfileScreen()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBottomNavigationMenu(BuildContext context,
      BottomNavigationController bottomNavigationController) {
    return Obx(
      () => BottomNavigationBar(
        items: [
          _buildBottomNavigationBarItem('Home', Icons.home,
              bottomNavigationController.tabIndex.value == 0, context),
          _buildBottomNavigationBarItem('Earnings', Icons.bar_chart_outlined,
              bottomNavigationController.tabIndex.value == 1, context),
          _buildBottomNavigationBarItem('History', Icons.history_outlined,
              bottomNavigationController.tabIndex.value == 2, context),
          _buildBottomNavigationBarItem('Notification', Icons.notifications,
              bottomNavigationController.tabIndex.value == 3, context),
          _buildBottomNavigationBarItem('Profile', Icons.person,
              bottomNavigationController.tabIndex.value == 4, context),
        ],
        currentIndex: bottomNavigationController.tabIndex.value,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: bottomNavigationController.changeTabIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      String label, IconData icon, bool isActive, BuildContext context) {
    return BottomNavigationBarItem(
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 20,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
          )
          // Inactive color
        ],
      ),
      label: '',
      activeIcon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: AppColors.primeryColor,
            size: 20,
          ),
          SizedBox(
            height: 4,
          ),
          Text(label,
              style: TextStyle(
                  color: AppColors.primeryColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w500)),
          SizedBox(
            height: 4,
          ),
          Container(
            width: 50,
            height: 4,
            margin: EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(30.0), right: Radius.circular(30.0)),
              color: AppColors.primeryColor,
              shape: BoxShape.rectangle,
            ),
          ),
        ],
      ),
    );
  }
}
