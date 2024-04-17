// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jambotaxi/features/welcome/welcome_controller.dart';
import 'package:jambotaxi/features/welcome/widgets/custom_checkbox.dart';
import 'package:jambotaxi/features/welcome/widgets/dotted_boreder.dart';
import 'package:jambotaxi/features/welcome/widgets/profile_picture_widget.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class BankDetailsScreen extends StatelessWidget {
  const BankDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final WelcomeController controller = Get.put(WelcomeController());

    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Bank Account Details",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(height: 1.7, color: AppColors.primeryColor),
        ),
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
      body: Padding(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCheckbox(
                isChecked: controller.isChecked1,
                onChanged: (bool value) {
                  controller.setIsChecked1(value);
                },
                termsText:
                    'Upload Bank Document (Passbook, Cancelled \nCheque, Bank Statement, or Digital Account \nScreenshot)',
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomCheckbox(
                isChecked: controller.isChecked3,
                onChanged: (bool value) {
                  controller.setIsChecked3(value);
                },
                termsText: 'Upload PDF / JPEG / PNG',
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Attach Bank Account Details",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(height: 1.7, color: AppColors.primeryColor),
              ),
              SizedBox(
                height: 15.h,
              ),
              DottedBorderContainer(
                onUploadPressed: () {
                  // Handle upload button press
                },
              ),
              SizedBox(
                height: 35.h,
              ),
              ProfilePictureWithCancel(
                imagePath: 'assets/images/bank_checque.png',
                onCancel: () {
                  // Handle the cancel action
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Bank Cheque",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(height: 1.7, color: AppColors.primeryColor),
              ),
              Row(
                children: [
                  Text(
                    "JPG",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(height: 1.7, color: AppColors.primeryColor),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "250 kb",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(height: 1.7, color: AppColors.primeryColor),
                  ),
                ],
              ),
              SizedBox(
                height: 123.h,
              ),
              CustomButton(
                height: 44,
                width: 1.sw,
                onPressed: () {
                  print("clicked");
                },
                text: "Done",
                color: AppColors.primeryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
