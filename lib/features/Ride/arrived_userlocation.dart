// ignore_for_file: non_constant_identifier_names, camel_case_types, unnecessary_const

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/features/call_screen/call_screen.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/utils/route/route_name.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class Arrived_Userlocation extends StatelessWidget {
  const Arrived_Userlocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.primeryColor,
                  ),
                ),
              )),
        ),
        centerTitle: true,
        title: Text('Customer Location',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.primeryColor)),
      ),
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
          const Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 120, right: 150.0),
                  child: CustomPngImage(
                    height: 30,
                    width: 15,
                    imageName: 'assets/images/pointer.png',
                    boxFit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 65.0),
                  child: CustomPngImage(
                    height: 200,
                    width: 85,
                    imageName: 'assets/images/mappath.png',
                    boxFit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 75, right: 130.0),
                  child: CustomPngImage(
                    height: 50,
                    width: 50,
                    imageName: 'assets/images/car (2).png',
                    boxFit: BoxFit.cover,
                  ),
                ),
              ],
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

  Widget _PassangerRequest(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      height: 220,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Customer Location",
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
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            child: CustomPngImage(
                              height: 59,
                              width: 59,
                              imageName: 'assets/images/circleimage.png',
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jessica ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.primeryColor),
                              ),
                              Text(
                                "Cash payment ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 98.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoute.chatscreen);
                              },
                              child: const CustomPngImage(
                                imageName: "assets/images/circular_message.png",
                                height: 41,
                                width: 41,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(const CallScreen());
                              },
                              child: const CustomPngImage(
                                imageName: "assets/images/circular_phone.png",
                                height: 41,
                                width: 41,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: CustomButton(
                      onPressed: () {
                        Get.toNamed(AppRoute.askForOtp);
                      },
                      child: Text(
                        'Arrived',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 15, color: AppColors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
