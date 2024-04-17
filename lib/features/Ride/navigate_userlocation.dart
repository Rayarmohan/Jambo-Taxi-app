// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_const

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/utils/route/route_name.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class NavigateUserLocation extends StatelessWidget {
  const NavigateUserLocation({super.key});

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
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
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
          Align(
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
                  padding: const EdgeInsets.only(bottom: 60, right: 120.0),
                  child: CustomPngImage(
                    imageName: 'assets/images/location.png',
                    boxFit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: bottomSheet(context),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 150.0, right: 16),
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white),
                child: Center(
                  child: CustomPngImage(
                    width: 20,
                    height: 25,
                    imageName: 'assets/images/target_icon2.png',
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bottomSheet(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 130,
      child: Column(
        children: [
          ListTile(
            leading:  Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: const CustomPngImage(
                imageName: "assets/images/location_icon.png",
                height: 25,
                width: 18.92,
              ),
            ),
            title: Text(
              "KwaZulu-Natal, Cape Town ",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primeryColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 40,
              child: CustomButton(
                color: AppColors.primeryColor,
                onPressed: () {
                  Get.toNamed(AppRoute.arrived_userLocation);
                },
                child: Text(
                  'Navigate Customer Location',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 15, color: AppColors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
