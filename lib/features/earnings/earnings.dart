import 'package:flutter/material.dart';
import 'package:jambotaxi/features/earnings/widget/custom_list_item.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class EarningScreen extends StatelessWidget {
  const EarningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data list
    List<CustomListItem> items = [
      const CustomListItem(
          imagePath: "assets/images/Propic.png",
          title: "Jessica",
          distance: 4.5,
          time: 10,
          earnings: "Rs. 58.00"),
      const CustomListItem(
          imagePath: "assets/images/james.png",
          title: "James",
          distance: 3.2,
          time: 8,
          earnings: "Rs. 47.00"),
      const CustomListItem(
          imagePath: "assets/images/mercy.png",
          title: "Mercy",
          distance: 6.1,
          time: 15,
          earnings: "Rs. 75.00"),
      const CustomListItem(
          imagePath: "assets/images/francis.png",
          title: "Francis",
          distance: 2.8,
          time: 6,
          earnings: "Rs. 36.00"),
          const CustomListItem(
          imagePath: "assets/images/abraham.png",
          title: "Abraham",
          distance: 2.8,
          time: 6,
          earnings: "Rs. 36.00"),
      // Add as many items as you need
    ];

    return Scaffold(
      appBar: CustomAppBar(
        title: Text("Today Earned",
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
        actions:  [
          Padding(
            padding: const EdgeInsets.only(right: 22.0),
            child: Container(
              height: 37,
              width: 37,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primeryColor,
              ),

              child: const Icon(
                Icons.calendar_month,
                size: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Card(
              color:
                  AppColors.primeryColor, // Adjust the color to match your UI
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('Total Hour',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.7, color: AppColors.white)),
                        Text('01',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                height: 1.7, color: AppColors.white)),
                      ],
                    ),
                    const SizedBox(
                        height: 60,
                        child: VerticalDivider(
                          color: Colors.white,
                          width: 1,
                        )),
                    Column(
                      children: [
                        Text('Total Miles',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.7, color: AppColors.white)),
                        Text('80',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                height: 1.7, color: AppColors.white)),
                      ],
                    ),
                    const SizedBox(
                        height: 60,
                        child: VerticalDivider(
                          color: Colors.white,
                          width: 1,
                        )),
                    Column(
                      children: [
                        Text('Earnings(Rs)',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.7, color: AppColors.white)),
                        Text('100',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                height: 1.7, color: AppColors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24,),
            Expanded(
                child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                var item = items[index];
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                  child: CustomListItem(
                    imagePath: item.imagePath,
                    title: item.title,
                    distance: item.distance,
                    time: item.time,
                    earnings: item.earnings,
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
