import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/utils/route/route_name.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class CollectCash extends StatelessWidget {
  const CollectCash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text("Collect Cash",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const CircleAvatar(
                  backgroundColor: AppColors.primeryColor,
                  radius: 40,
                  child:   CustomPngImage(
                    imageName: "assets/images/wallet_white.png",
                    height: 30,
                    width: 30,
                  ),
                ),
                Text("Collect Cash",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(height: 1.7, color: AppColors.primeryColor)),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Icon(Icons.radio_button_checked,
                              size: 20.0), // Use an appropriate icon
                          ...List.generate(
                            7, // Number of dots
                            (index) => Container(
                              width: 2, // Dot width
                              height: 2, // Dot height
                              margin: const EdgeInsets.symmetric(
                                  vertical: 2), // Space between the dots
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const CustomPngImage(
                            imageName: "assets/images/location_icon.png",
                            height: 15,
                            width: 11.35,
                          ), // Smaller icon for the destination point
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '219 Florida Rd, Durban',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        height: 1.7,
                                        color: AppColors.primeryColor),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              const Divider(color: AppColors.primeryColor,),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                'KwaZulu-Natal, Cape Town',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        height: 1.7,
                                        color: AppColors.primeryColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Container(
                          color: AppColors.primeryColor,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              '10 min trip',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      height: 1.7, color: AppColors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Stack(children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Container(
                      color: AppColors.primeryColor,
                      height: 120,
                      width: 351,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, // This aligns the row's children vertically
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 45.0),
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                  "assets/images/Propic.png"), // Using backgroundImage to fit the image
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Center the texts vertically
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Align the texts to the start (left side)
                            mainAxisSize: MainAxisSize
                                .min, // Use the minimum space needed by the children
                            children: [
                              Text(
                                "Jessica",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                      color: AppColors.white,
                                      fontSize: 24,
                                    ),
                              ),
                              Text(
                                "Cash payment",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    left: -15,
                    top: 40,
                    child: CircleAvatar(
                      backgroundColor: AppColors.white,
                    ),
                  ),
                  const Positioned(
                    right: -15,
                    top: 40,
                    child: CircleAvatar(
                      backgroundColor: AppColors.white,
                    ),
                  )
                ]),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 46,
                  width: 351,
                  color: AppColors.primeryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text("Total Amount",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    height: 1.7,
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w300)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text("Rs 120.5",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    height: 1.7,
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w300)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 60),
                CustomButton(
                  height: 44,
                  width: 1.sw,
                  onPressed: () {
                    Get.toNamed(AppRoute.rating);
                  },
                  text: "Cash Collected",
                  color: AppColors.green,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
