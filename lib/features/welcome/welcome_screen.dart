import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/features/welcome/nested_screens/bankdetails_screen.dart';
import 'package:jambotaxi/features/welcome/nested_screens/drivinglicense_screen.dart';
import 'package:jambotaxi/features/welcome/nested_screens/governmentid_screen.dart';
import 'package:jambotaxi/features/welcome/nested_screens/profilepicture_screen.dart';
import 'package:jambotaxi/features/welcome/widgets/custom_welcome_screen_button.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/utils/route/route_name.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const SizedBox(),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome,",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(height: 1.1, color: AppColors.grey, ),
                ),

                Text(
                  textAlign: TextAlign.center,
                  "Jenny Wilson",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(height: 1.1, color: AppColors.primeryColor),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Required Steps",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(height: 1.7, color: AppColors.grey)),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomWelcomeScreenButton(
                      title: "Profile Picture",
                      onTap: () {
                        Get.toNamed(AppRoute.profilrePictureScreen);
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomWelcomeScreenButton(
                      title: "Bank Account Details",
                      onTap: () {
                        Get.to(BankDetailsScreen());
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomWelcomeScreenButton(
                      title: "Driving Details",
                      onTap: () {
                        Get.to(DrivingLicenseScreen());
                      },
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text("Submitted Steps",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(height: 1.7, color: AppColors.grey)),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomWelcomeScreenButton(
                      title: "Government ID",
                      onTap: () {
                        Get.to(const GovernmentIDScreen());
                      },
                    ),
                    SizedBox(
                      height: 180.h,
                    ),
                    CustomButton(
                      height: 44,
                      width: 1.sw,
                      onPressed: () {
                        print("clicked");
                        showVerificationPopup(context);
                      },
                      text: "Continue",
                      color: AppColors.primeryColor,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showVerificationPopup(BuildContext context) {
    showModalBottomSheet(

      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(20),
          height: 350, // Adjust the height as needed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.check_circle,
                size: 60, // Adjust the size as needed
                color: AppColors.primeryColor, // Adjust the color as needed
              ),
              SizedBox(height: 20), // Provides spacing between icon and text
              Text(
                'Application Submitted For Verification',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(height: 1.7, color: AppColors.primeryColor),
              ),
              SizedBox(height: 10), // Provides spacing between text items
              Text(
                'We will get in touch in 48 working hours.\nBe ready to for your ride!',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(height: 1.7, color: AppColors.primeryColor),
              ),
              SizedBox(height: 20.h), // Provides spacing before the button
              CustomButton(
                height: 44,
                width: 1.sw,
                onPressed: () {
                  Get.back();
                  Get.toNamed(AppRoute.enablelocation);
                },
                text: "Got it",
                color: AppColors.primeryColor,
              )
            ],
          ),
        );
      },
    );
  }
}
