import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jambotaxi/features/otp_verification/otp_verification_controller.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/utils/route/route_name.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class OTPVerification extends StatelessWidget {
  const OTPVerification({super.key});

  // final OtpVerificationController controller = Get.put(OtpVerificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('OTP Verification',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(height: 1.7, color: AppColors.primeryColor)),
        leading: const Padding(
          padding: EdgeInsets.all(8),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enter OTP',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(height: 1.7, color: AppColors.primeryColor)),
            Text('We sent a PIN to your customer\'s\nmobile number',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(height: 1.7, color: AppColors.primeryColor)),
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
                  List.generate(4, (index) => _buildOTPBox(context, index)),
            ),
            const SizedBox(height: 40),
            Column(
              children: [
                Text(
                  "Didn’t receive OTP?",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(height: 1.7, color: AppColors.grey),
                ),
                TextButton(
                  onPressed: () {
                    // Add your resend code logic here
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero, // Remove default padding
                    tapTargetSize: MaterialTapTargetSize
                        .shrinkWrap, // Minimize tap target size
                  ),
                  child: Text(
                    "Resend code",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        height: 1.7,
                        color: AppColors.primeryColor,
                        decoration: TextDecoration.underline,
                        decorationThickness: 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            CustomButton(
              height: 60,
              width: 0.9.sw,
              onPressed: () {
                Get.toNamed(AppRoute.collectcash);
              },
              text: "Verify & Start ride",
              color: AppColors.primeryColor,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildOTPBox(BuildContext context, int index) {
    return SizedBox(
      width: 60,
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        // focusNode: controller.focusNodes[index],
        // controller: controller.controllers[index],
        decoration: InputDecoration(
          hintText: '-',
          counterText: "", // to hide the counter text below the TextField
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.grey.shade100),
            borderRadius: BorderRadius.circular(2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(width: 2, color: AppColors.primeryColor),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),
    );
  }
}
