import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/utils/route/route_name.dart';
import 'package:jambotaxi/widgets/custom_button.dart';

class CancelSuccess extends StatelessWidget {
  const CancelSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      height: 350, // Adjust the height as needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 70,
            padding: const EdgeInsets.all(4), // Add some padding around the icon
            decoration: BoxDecoration(
              color: AppColors.primeryColor, // Set the background color
              borderRadius:
                  BorderRadius.circular(35), // Optional: Add rounded corners
            ),
            child: const Icon(
              Icons.close_sharp,
              color: Colors.white,
              size: 55,
            ), // Set the icon color to contrast with the background
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Booking Cancelled Successfully!',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(height: 1.7, color: AppColors.primeryColor)),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Your booking with CRN #854HG23\nhas been cancelled successfully',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.primeryColor),
          ),
          const SizedBox(
            height: 40,
          ),
          CustomButton(
            height: 60,
            width: 0.9.sw,
            onPressed: () {
              Get.toNamed(AppRoute.bottom_nav);
            },
            text: "Got It",
            color: AppColors.primeryColor,
          )
        ],
      ),
    );
  }
}
