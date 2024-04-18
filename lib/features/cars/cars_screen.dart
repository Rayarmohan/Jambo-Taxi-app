import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/features/cars/car_nested_screens/add_new_car_screen.dart';

import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class CarsScreen extends StatelessWidget {
  const CarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Cars",
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.to(const AddNewCar());
              },
              child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.grey)),
                  child: const Icon(
                    Icons.add,
                    size: 20,
                    color: AppColors.black,
                  )),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    child: Stack(
                      children: [
                        Card(
                          child: SizedBox(
                            width: 335.h,
                            height: 200.h, // Adjusted height slightly
                            child: Stack(
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: SizedBox(
                                            width: 110.h,
                                            height: 131.h,
                                            child: Image.asset(
                                                "assets/images/car copy.png"),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 17,
                                          height: 32,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 32),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Maruti Suzuki Swift',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge!
                                                    .copyWith(
                                                      height: 1.7,
                                                      color: AppColors
                                                          .primeryColor,
                                                    ),
                                              ),
                                              Text(
                                                'Mini',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium!
                                                    .copyWith(
                                                      height: 1.7,
                                                      color: AppColors.grey,
                                                    ),
                                              ),
                                              Row(
                                                children: [
                                                  const Icon(
                                                    Icons.person,
                                                    color:
                                                        AppColors.primeryColor,
                                                  ),
                                                  SizedBox(
                                                    width: 9.06.h,
                                                  ),
                                                  Text(
                                                    '4',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelMedium!
                                                        .copyWith(
                                                          height: 1.7,
                                                          color: AppColors
                                                              .primeryColor,
                                                        ),
                                                  ),
                                                  const SizedBox(
                                                    width: 17.93,
                                                  ),
                                                  const CustomPngImage(
                                                    imageName:
                                                        "assets/images/Vector.png",
                                                    color:
                                                        AppColors.primeryColor,
                                                    height: 17,
                                                    width: 14,
                                                  ),
                                                  const SizedBox(
                                                    width: 9.06,
                                                  ),
                                                  Text(
                                                    'Petrol',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelMedium!
                                                        .copyWith(
                                                          height: 1.7,
                                                          color: AppColors
                                                              .primeryColor,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                'Last updated 6 Jun 2023',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium!
                                                    .copyWith(
                                                      height: 1.7,
                                                      color: AppColors.grey,
                                                    ),
                                              ),
                                              const SizedBox(height: 6),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 4,
                          child: Container(
                            height: 16,
                            width: 85,
                            decoration: const BoxDecoration(
                              color: AppColors.primeryColor,
                            ),
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  "Under Verification",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(
                                          height: 1.7,
                                          fontSize: 10,
                                          color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 1,
                          right: 0,
                          left: 0,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 4.5, right: 4.5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: CustomButton(
                                    height: 44.h,
                                    onPressed: () {},
                                    text: "Edit",
                                    color: AppColors.primeryColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0.h,
                                ),
                                Expanded(
                                  child: CustomButton(
                                    height: 44.h,
                                    onPressed: () {
                                    },
                                    text: "Delete",
                                    color: AppColors.primeryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
