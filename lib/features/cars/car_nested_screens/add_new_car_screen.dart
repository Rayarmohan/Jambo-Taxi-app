import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/features/cars/car_nested_screens/car_images_screen.dart';
import 'package:jambotaxi/features/cars/car_nested_screens/cardocument_screens.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class AddNewCar extends StatelessWidget {
  const AddNewCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: Text('Add New Car',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(height: 1.7, color: AppColors.primeryColor)),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
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
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Car Name',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(height: 1.7, color: AppColors.grey)),
                      const SizedBox(
                        height: 9,
                      ),
                      Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.grey,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ex. Maruti Suzuki Swift",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    height: 1.7,
                                    color: AppColors.black,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('Car Type',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(height: 1.7, color: AppColors.grey)),
                      const SizedBox(
                        height: 9,
                      ),
                      Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.grey,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Select Type",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    height: 1.7,
                                    color: AppColors.black,
                                  ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('No of Seats',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(height: 1.7, color: AppColors.grey)),
                      const SizedBox(
                        height: 9,
                      ),
                      Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.grey,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Select no of seats",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    height: 1.7,
                                    color: AppColors.black,
                                  ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('Car Number',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(height: 1.7, color: AppColors.grey)),
                      const SizedBox(
                        height: 9,
                      ),
                      Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.grey,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Enter Car Number",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    height: 1.7,
                                    color: AppColors.black,
                                  ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('Car Fuel Type',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(height: 1.7, color: AppColors.grey)),
                      const SizedBox(
                        height: 9,
                      ),
                      Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: AppColors.grey,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Select Fuel Type",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    height: 1.7,
                                    color: AppColors.black,
                                  ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('Car Documents Details',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(height: 1.7, color: AppColors.grey)),
                      const SizedBox(
                        height: 9,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(const CarDocuments());
                        },
                        child: Container(
                          height: 50,
                          width: 500,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: AppColors.grey,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Add Document Details",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      height: 1.7,
                                      color: AppColors.black,
                                    ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('Car Images',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(height: 1.7, color: AppColors.grey)),
                      const SizedBox(
                        height: 9,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(const CarImages());
                        },
                        child: Container(
                          height: 50,
                          width: 500,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: AppColors.grey,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Add Car Images",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      height: 1.7,
                                      color: AppColors.black,
                                    ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      CustomButton(
                        height: 44,
                        width: 1.sw,
                        onPressed: () {
                          showVerificationPopup(context);
                        },
                        text: "Add New Car",
                        color: AppColors.primeryColor,
                      ),
                    ]),
              ))),
    );
  }

  void showVerificationPopup(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.check_circle,
                size: 60,
                color: AppColors.primeryColor,
              ),
              const SizedBox(height: 20),
              Text(
                'Request sent Successfully!',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(height: 1.7, color: AppColors.primeryColor),
              ),
              const SizedBox(height: 10),
              Text(
                'We will get in touch in 48 working hours.\nBe ready to for your ride!',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(height: 1.7, color: AppColors.primeryColor),
              ),
              SizedBox(height: 20.h),
              CustomButton(
                height: 44,
                width: 1.sw,
                onPressed: () {
                  Get.back();
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
