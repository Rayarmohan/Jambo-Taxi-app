// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/features/help_center/help_center.dart';
import 'package:jambotaxi/features/privacy_policy/privacy_screen.dart';
import 'package:jambotaxi/features/profile/editprofile_screen.dart';
import 'package:jambotaxi/features/profile/widgets/update_photo.dart';
import 'package:jambotaxi/features/profilesettings/profilesettings_screen.dart';
import 'package:jambotaxi/features/wallet/wallet_screen.dart';

import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/utils/route/route_name.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: Text('Profile',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(height: 1.7, color: AppColors.primeryColor)),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: CustomPngImage(
              imageName: "assets/images/arrow_back.png",
              height: 30,
              width: 30,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileUpdate(
                  imagePath: 'assets/images/profile_pic.png',
                  onUpdate: () {
                    Get.to(ProfileEdit());
                  }),
              SizedBox(
                height: 5,
              ),
              Center(
                  child: Text(
                "Eric Selvick",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      height: 1.7,
                      color: AppColors.primeryColor,
                    ),
              )),
              SizedBox(
                height: 30,
              ),
              ListTile(
                onTap: () {
                  Get.to(WalletScreen());
                },
                leading: CustomPngImage(
                  imageName: "assets/images/wallet.png",
                  height: 20,
                  width: 20,
                ),
                title: Text("Wallet",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primeryColor)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.primeryColor,
                  size: 15,
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              ListTile(
                leading: CustomPngImage(
                  imageName: "assets/images/person.png",
                  height: 20,
                  width: 20,
                ),
                title: Text("Your Profile",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primeryColor)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.primeryColor,
                  size: 15,
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              ListTile(
                onTap: () => Get.toNamed(AppRoute.bookingcompletescreen),
                leading: CustomPngImage(
                  imageName: "assets/images/sandtimer.png",
                  height: 20,
                  width: 20,
                ),
                title: Text("Your Rides",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primeryColor)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.primeryColor,
                  size: 15,
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              ListTile(
                onTap: () => Get.toNamed(AppRoute.prebookingcompletescreen),
                leading: CustomPngImage(
                  imageName: "assets/images/your ride.png",
                  height: 20,
                  width: 20,
                ),
                title: Text("Pre-Booked Rides",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primeryColor)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.primeryColor,
                  size: 15,
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              InkWell(
                onTap: () {
                  Get.to(Settings());
                },
                child: ListTile(
                  leading: CustomPngImage(
                    imageName: "assets/images/settins2.png",
                    height: 20,
                    width: 20,
                  ),
                  title: Text("Settings",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: AppColors.primeryColor)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primeryColor,
                    size: 15,
                  ),
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              ListTile(
                onTap: () => Get.toNamed(AppRoute.cars_screen),
                leading: CustomPngImage(
                  imageName: "assets/images/car4.png",
                  height: 25,
                  width: 25,
                ),
                title: Text("Cars",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primeryColor)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.primeryColor,
                  size: 15,
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              InkWell(
                onTap: () {
                  Get.to(HelpCenter());
                },
                child: ListTile(
                  leading: CustomPngImage(
                    imageName: "assets/images/helpcenter.png",
                    height: 20,
                    width: 20,
                  ),
                  title: Text("Help Center",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: AppColors.primeryColor)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primeryColor,
                    size: 15,
                  ),
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              InkWell(
                onTap: () {
                  Get.to(PrivacyScreen());
                },
                child: ListTile(
                  leading: CustomPngImage(
                    imageName: "assets/images/person2.png",
                    height: 20,
                    width: 20,
                  ),
                  title: Text("Privacy Policy",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: AppColors.primeryColor)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primeryColor,
                    size: 15,
                  ),
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              InkWell(
                onTap: () {
                  _showBottomSheet(context);
                },
                child: ListTile(
                  leading: CustomPngImage(
                    imageName: "assets/images/signout.png",
                    height: 20,
                    width: 20,
                  ),
                  title: Text("Log Out",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: AppColors.primeryColor)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primeryColor,
                    size: 15,
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ListTile(
                title: Center(
                  child: Text(
                    'Log Out',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          height: 1.7,
                          color: AppColors.primeryColor,
                        ),
                  ),
                ),
              ),
              const Divider(
                height: 2,
                color: Colors.black,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    'Are you sure you want to log out ?',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 165,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: const Text('Cancel'),
                      ),
                    ),
                    SizedBox(
                      width: 165,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: const Text('Yes, Logout'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
