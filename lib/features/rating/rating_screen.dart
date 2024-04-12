import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/features/rating/rating_controller.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final RatingController ratingController = Get.put(RatingController());
    return Scaffold(
      appBar: CustomAppBar(
        title: Text("Rate Rider",
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              CircleAvatar(
                radius: 60,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/Propic.png"),
                      fit: BoxFit
                          .fitHeight, // This will make the image fit properly
                    ),
                  ),
                ),
              ),
              Text("Jessica",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(height: 1.7, color: AppColors.primeryColor)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Rs.15.00  ",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(height: 1.7, color: AppColors.primeryColor)),
                  const CircleAvatar(
                    backgroundColor: AppColors.primeryColor,
                    radius: 5,
                  ),
                  Text("  Rs.15.00",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(height: 1.7, color: AppColors.primeryColor)),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Text("How was your trip with",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(height: 1.7, color: AppColors.grey)),
              Text("Jessica",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(height: 1.7, color: AppColors.primeryColor)),
              const SizedBox(
                height: 60,
              ),
              Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.grey, // Border color
                    width: 1, // Border width
                  ), // Optional: Use this to round the corners if needed
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text('Your Overall Rating',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  height: 1.7, color: AppColors.primeryColor)),
                      const SizedBox(
                        height: 10,
                      ),
                      Obx(() => RatingBar.builder(
                            initialRating: ratingController.rating.value,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (newRating) {
                              ratingController.updateRating(newRating);
                            },
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 90,),
              CustomButton(
                height: 44,
                width: 1.sw,
                onPressed: () {},
                text: "Allow Location Access",
                color: AppColors.primeryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
