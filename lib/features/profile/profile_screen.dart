// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/features/help_center/help_center.dart';
import 'package:jambotaxi/features/privacy_policy/privacy_screen.dart';
import 'package:jambotaxi/features/profile/editprofile_screen.dart';
import 'package:jambotaxi/features/profile/widgets/update_photo.dart';
import 'package:jambotaxi/features/settings/settings_screen.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
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
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
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
                  imagePath: "assets/images/Eric.png",
                  onUpdate: () {
                    Get.to(EditProfile());
                  }),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text("Eric Selvick",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ))),
              SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: AppColors.primeryColor,
                ),
                title: Text("Your Profile",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    )),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(
                  Icons.hourglass_bottom,
                  color: AppColors.primeryColor,
                ),
                title: Text("Your Rides",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    )),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(
                  Icons.book_sharp,
                  color: AppColors.primeryColor,
                ),
                title: Text("Pre-Booked Rides",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    )),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
              InkWell(
                onTap: () {
                  Get.to(Settings());
                },
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: AppColors.primeryColor,
                  ),
                  title: Text("Settings",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      )),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
              ListTile(
                leading: Icon(
                  Icons.car_repair_rounded,
                  color: AppColors.primeryColor,
                ),
                title: Text("Cars",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    )),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
              InkWell(
                onTap: () {
                  Get.to(HelpCenter());
                },
                child: ListTile(
                  leading: Icon(
                    Icons.help_center,
                    color: AppColors.primeryColor,
                  ),
                  title: Text("Help Center",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      )),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
              InkWell(
                onTap: () {
                  Get.to(PrivacyScreen());
                },
                child: ListTile(
                  leading: Icon(
                    Icons.person_pin,
                    color: AppColors.primeryColor,
                  ),
                  title: Text("Privacy Policy",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      )),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
              InkWell(
                onTap: () {
                  _showBottomSheet(context);
                },
                child: ListTile(
                  leading: Icon(
                    Icons.logout_outlined,
                    color: AppColors.primeryColor,
                  ),
                  title: Text("Log Out",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      )),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
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
              const ListTile(
                title: Center(
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
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
