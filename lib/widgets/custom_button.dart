import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.height,
      this.width,
      this.color,
      this.text,
      this.onPressed,
      this.textColor,
      this.child});
  final double? width, height;
  final Color? color, textColor;
  final String? text;
  final Function()? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: width ?? 1.sw,
      height: height ?? 50,
      color: color ?? AppColors.primeryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
      elevation: 0,
      child: child ??
          Text(
            text!,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppColors.white),
          ),
    );
  }
}
