import 'package:flutter/material.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const SizedBox(),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome,",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(height: 1.7, color: AppColors.grey),
              ),
               Text(
                  textAlign: TextAlign.center,
                  "Jenny Wilson",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(height: 1.7, color: AppColors.primeryColor),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
