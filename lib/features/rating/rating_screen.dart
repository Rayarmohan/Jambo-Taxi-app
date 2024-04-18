import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/utils/route/route_name.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text("Rate Rider",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  height: 1.7,
                  color: AppColors.primeryColor,
                  fontSize: 20,
                )),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
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
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          height: 1.7,
                          color: AppColors.primeryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Rs.15.00  ",
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  height: 1.7,
                                  color: AppColors.primeryColor,
                                  fontSize: 15,
                                )),
                    const CircleAvatar(
                      backgroundColor: AppColors.primeryColor,
                      radius: 5,
                    ),
                    Text("  12 Miles",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                height: 1.7,
                                color: AppColors.primeryColor,
                                fontSize: 15)),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Text("How was your trip with",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          height: 1.1,
                          color: AppColors.grey,
                          fontSize: 20,
                        )),
                Text("Jessica",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          height: 1.7,
                          color: AppColors.primeryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        )),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  width: 350,
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.grey, // Border color
                      width: 0.4, // Border width
                    ), // Optional: Use this to round the corners if needed
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text('Your Overall Rating',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    height: 1.7,
                                    color: AppColors.primeryColor)),
                        const SizedBox(
                          height: 10,
                        ),
                        RatingBar(
                          initialRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          ratingWidget: RatingWidget(
                            half: Image.asset('assets/images/rateempty.png'),
                            empty: Image.asset('assets/images/rateempty.png'),
                            full: Image.asset('assets/images/ratefull (2).png'),
                          ),
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          onRatingUpdate: (rating) {
                          },
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                CustomButton(
                  height: 44,
                  width: 1.sw,
                  onPressed: () {
                    Get.toNamed(AppRoute.bottom_nav);
                  },
                  color: AppColors.primeryColor,
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white, // Assuming you want white text
                      fontSize: 18, // Adjust the font size as needed
                      // Optional: if you want bold text
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
