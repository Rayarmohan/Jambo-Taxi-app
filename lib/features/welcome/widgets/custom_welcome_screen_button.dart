import 'package:flutter/material.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';

class CustomWelcomeScreenButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color borderColor;
  final Color textColor;
  final Color iconColor;
  final double height;
  final double width;
  final VoidCallback? onTap;

  const CustomWelcomeScreenButton({
    super.key,
    required this.title,
    this.icon = Icons.arrow_forward_ios,
    this.borderColor = AppColors.grey,
    this.textColor = AppColors.black,
    this.iconColor = Colors.black,
    this.height = 50,
    this.width = 500,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: borderColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(
                    height: 1.7,
                    color: textColor,
                  ),
            ),
            Icon(
              icon,
              color: iconColor,size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
