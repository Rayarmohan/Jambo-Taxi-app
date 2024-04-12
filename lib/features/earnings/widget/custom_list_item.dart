import 'package:flutter/material.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';

class CustomListItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final double distance;
  final int time;
  final double earnings;

  const CustomListItem({
    super.key,
    required this.imagePath,
    this.title = "Jessica",
    this.distance = 4.5,
    this.time = 10,
    this.earnings = 58.00,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Your tap callback code
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0), // Adjust the padding as needed
            color: Colors.white, // Set the background color as needed
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 80, // Set this to the size you need
                  height: 80, // Set this to the size you need
                  child: CircleAvatar(
                    radius: 40, // This will be half the size of the SizedBox
                    backgroundImage: AssetImage(imagePath),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 12.0), // Provide space between the avatar and text
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          title,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(height: 1.7, color: AppColors.primeryColor), // Replace with AppColors.primeryColor
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "$distance Miles  ",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(height: 1.7, color: AppColors.primeryColor), // Replace with AppColors.primeryColor
                            ),
                            const SizedBox(height: 15, child: VerticalDivider(color: AppColors.primeryColor, width: 4)), // Replace with AppColors.primeryColor
                            Text(
                              "  $time Min  ",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(height: 1.7, color: AppColors.primeryColor), // Replace with AppColors.primeryColor
                            ),
                            const SizedBox(height: 15, child: VerticalDivider(color: AppColors.primeryColor, width: 4)), // Replace with AppColors.primeryColor
                            Text(
                              "  $earnings",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(height: 1.7, color: AppColors.primeryColor), // Replace with AppColors.primeryColor
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}
