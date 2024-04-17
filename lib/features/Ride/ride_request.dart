// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/utils/route/route_name.dart';
import 'package:jambotaxi/widgets/custom_Progress_Indicator.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class Ride_Request extends StatelessWidget {
  const Ride_Request({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: CustomPngImage(
              imageName: 'assets/images/map.png',
              boxFit: BoxFit.cover,
            ),
          ),
          _buildbar(context),
           Padding(
            padding: EdgeInsets.only(right: 160, bottom: 360),
            child: Align(
              alignment: Alignment.centerRight,
              child: Transform.rotate(
                angle: 45 * 3.141592653 / 180,
                child: CustomPngImage(
                  height: 63,
                  width: 63,
                  imageName: 'assets/images/location.png',
                  boxFit: BoxFit.cover,
                ),
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 50),
            child: Align(
              alignment: Alignment.center,
              child: _buildTimer(context),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _PassangerRequest(context),
          ),
        ],
      ),
    );
  }

  Widget _buildTimer(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(60)),
        color: Colors.white,
      ),
      height: 74,
      width: 74,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "30",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 23,fontWeight: FontWeight.w700, color: AppColors.primeryColor),
                ),
                Text(
                  "Seconds",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 11,fontWeight: FontWeight.w400, color: AppColors.primeryColor),
                ),
              ],
            ),
          ),
           CustomCircularProgressIndicator(
            progress: 0.5, // Set progress to 70%
            backgroundColor: Colors.grey.withOpacity(0.3), // Background color
            progressColor: AppColors.primeryColor, // Progress color
            strokeWidth: 5.0, // Thickness of the progress indicator
          ),
        ],
      ),
    );
  }

  Widget _PassangerRequest(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      height: 330,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Ride Request",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primeryColor),
              ),
              Text(
                "5 min away",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primeryColor),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            thickness: 0.8,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 90,
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      child: CustomPngImage(
                        height: 59,
                        width: 59,
                        imageName: 'assets/images/circleimage.png',
                      ),
                    ),
                    title: Text(
                      "Jessica ",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primeryColor),
                    ),
                    subtitle: Text(
                      "Cash payment ",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primeryColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      children: [
                        Icon(
                          Icons.radio_button_checked_rounded,
                          size: 15,
                          color: AppColors.primeryColor,
                        ),
                        SizedBox(
                          height: 22,
                          child: DottedLine(
                            direction: Axis.vertical,
                            lineLength: double.infinity,
                            lineThickness: 0.5,

                            dashLength: 4.0,
                            dashColor: Colors.black,
                            dashRadius: 0.0,
                            dashGapLength: 4.0,
                            dashGapColor: Colors.transparent,
                            dashGapRadius: 0.0,
                          ),
                        ),
                        Icon(
                          Icons.location_on,
                          size: 15,
                          color: AppColors.primeryColor,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "219 Florida Rd, Durban ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primeryColor),
                        ),
                        Row(
                          children: [
                            const SizedBox(
                                width: 210,
                                child: Divider(
                                  thickness: 0.6,
                                  color: Colors.black,
                                )),
                            Container(
                                height: 20,
                                color: AppColors.primeryColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "10 min trip",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.white),
                                  ),
                                ))
                          ],
                        ),
                        Text(
                          "KwaZulu-Natal, Cape Town ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primeryColor),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 160,
                      height: 44,
                      child: CustomButton(
                        onPressed: () {
                          Get.toNamed(AppRoute.cancelRide);
                        },
                        child: Text(
                          'Decline',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 15, color: AppColors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      height: 44,
                      child: CustomButton(
                        color: Colors.green,
                        onPressed: () {
                          Get.toNamed(AppRoute.navigate_userLocation);
                        },
                        child: Text(
                          'Accept',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 15, color: AppColors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildbar(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              width: 245,
              height: 44,
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      size: 25,
                      Icons.person,
                      color: AppColors.primeryColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 40,
              height: 44,
              color: Colors.grey,
              child: Center(
                child: Text("OFF",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 15, height: 1.7, color: AppColors.white)),
              ),
            ),
            Container(
              width: 40,
              height: 44,
              color: const Color.fromARGB(255, 92, 204, 94),
              child: Center(
                child: Text("ON",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 15, height: 1.7, color: AppColors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
