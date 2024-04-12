import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/utils/route/route_name.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class AskForOtp extends StatelessWidget {
  const AskForOtp({super.key});

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
        title: Text('Arrived at Destination',
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
                  padding: EdgeInsets.only(top: 125, right: 40.0),
                  child: CustomPngImage(
                    height: 30,
                    width: 15,
                    imageName: 'assets/images/pointer.png',
                    boxFit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 80, right: 70.0),
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
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 150.0, right: 16),
              child: Container(
                height: 45,
                width: 45,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white),
                child: const Center(
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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.primeryColor,
                  child: Icon(
                    size: 40,
                    Icons.check_outlined,
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('Arrived at Customer Location',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primeryColor)),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "KwaZulu-Natal, Cape Town ",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primeryColor),
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
                        Get.toNamed(AppRoute.otpscreen);
                      },
                      child: Text(
                        'Ask For Otp',
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
