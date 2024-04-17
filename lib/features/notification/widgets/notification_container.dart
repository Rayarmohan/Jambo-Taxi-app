import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';

class NotificationContainer extends StatelessWidget {
  final int index;
  const NotificationContainer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 125,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: index%2 != 0 ? Colors.white : AppColors.grey, // Border color
                  width: 1, // Border width
                ), // Optional: Use this to round the corners if needed
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.check_circle_rounded,
                        color: AppColors.primeryColor,
                        size: 60,
                      ),
                      title: Text("Ride Request from Joshua",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(height: 1.7, color: AppColors.black)),
                      subtitle: Wrap(
                        children: [
                          const Text(
                        "Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed",
                        style: TextStyle(
                          color: AppColors.primeryColor,
                          overflow: TextOverflow.ellipsis, // Added to handle overflow
                        ),
                        maxLines: 3, // You can adjust maxLines to control how many lines the text can span before showing ellipsis
                      ),
                        ],
                      ),
                       
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Text("1h",
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      height: 1.7,
                      color: AppColors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 12)),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
