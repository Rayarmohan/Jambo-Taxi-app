import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_button.dart';

class EnableLocationScreen extends StatelessWidget {
  const EnableLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 180,),
            const CircleAvatar(
              backgroundColor: AppColors.primeryColor,
              radius: 50,
              child: Icon(
                Icons.location_on,
                size: 60,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Enable Location access",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(height: 1.7, color: AppColors.primeryColor)),
            Text("To ensure a seamiess and efficient experience,",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(height: 1.7, color: AppColors.primeryColor,fontWeight: FontWeight.w300)),
            Text("allow us access to your location.",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(height: 1.7, color: AppColors.primeryColor,fontWeight: FontWeight.w300)),
            const SizedBox(
              height: 250,
            ),
            CustomButton(
              height: 44,
              width: 1.sw,
              onPressed: () {},
              text: "Allow Location Access",
              color: AppColors.primeryColor,
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {},
              minWidth: 1.sw,
              height: 50,
              color: AppColors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1)),
              child: Text(
                "Maybe Later",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.primeryColor),
              ),
            )
          ],
        ),
      )),
    );
  }
}
