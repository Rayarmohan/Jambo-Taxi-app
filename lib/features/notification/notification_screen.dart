import 'package:flutter/material.dart';
import 'package:jambotaxi/features/notification/widgets/notification_container.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text("Notification",
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 58 ,
              color: AppColors.primeryColor,
              child: Center(
                child: Text(
                  '2 NEW',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(height: 1.7, color: AppColors.white),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("TODAY",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(height: 1.7, color: AppColors.grey)),
                  GestureDetector(
                    onTap: () {
                      // Implement mark all as read functionality
                    },
                    child: Text("Mark all as read",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(height: 1.7, color: AppColors.primeryColor)),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return NotificationContainer(index: index,);
                },
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Yesterday",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(height: 1.7, color: AppColors.grey)),
                  GestureDetector(
                    onTap: () {
                      // Implement mark all as read functionality
                    },
                    child: Text("Mark all as read",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(height: 1.7, color: AppColors.primeryColor)),
                  )
                ],
              ),
              const SizedBox(height: 8),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return NotificationContainer(index: index);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
