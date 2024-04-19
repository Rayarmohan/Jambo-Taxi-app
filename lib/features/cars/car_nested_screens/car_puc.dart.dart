import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/features/cars/cars_controller.dart';
import 'package:jambotaxi/features/cars/widgets/image_preview.dart';
import 'package:jambotaxi/features/welcome/widgets/custom_checkbox.dart';
import 'package:jambotaxi/features/welcome/widgets/dotted_boreder.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class CarPuc extends StatelessWidget {
  const CarPuc({super.key});

  @override
  Widget build(BuildContext context) {
    final CarController controller = Get.put(CarController());
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Car PUC",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(height: 1.7, color: AppColors.primeryColor),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const CustomPngImage(
              imageName: "assets/images/arrow_back.png",
              height: 30,
              width: 30,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCheckbox(
                isChecked: controller.isChecked1,
                onChanged: (bool value) {
                  controller.setIsChecked1(value);
                },
                termsText: 'Upload Valid PUC Slip',
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
              const Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Attach PUC Details",
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
              ImagePriview(
                imagePath: 'assets/images/puc.png',
                onCancel: () {
                  // Handle the cancel action
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "PUC",
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
                  const SizedBox(
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
