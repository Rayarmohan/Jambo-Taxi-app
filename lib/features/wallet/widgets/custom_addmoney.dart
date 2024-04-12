import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String trailingText;
  final Color trailcolor;

  const CustomListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.trailingText, required this.trailcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle,
            color: AppColors.primeryColor,
            size: 48,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: AppColors.primeryColor,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 7.h,
                ),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: AppColors.grey,
                      ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Text(
            trailingText,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: trailcolor,
                ),
          ),
        ],
      ),
    );
  }
}
