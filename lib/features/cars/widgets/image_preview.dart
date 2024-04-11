import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';

class ImagePriview extends StatelessWidget {
  final String imagePath;
  final VoidCallback onCancel;

  const ImagePriview({
    super.key,
    required this.imagePath,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior:
          Clip.none, // Allows the negative positioning of the cancel icon
      children: [
        // Image container
        Container(
          width: 116.h,
          height: 116.h,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            // This should match the border radius of the image
            borderRadius: BorderRadius.circular(0),
          ),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        // Cancel icon button
        Positioned(
          top: -10, // Negative values to position it outside the container
          right: -10,
          child: InkWell(
            onTap: onCancel,
            child: Container(
              padding: const EdgeInsets.all(2),
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                color: AppColors.primeryColor,
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: Colors.white),
              ),
              child: const Icon(
                Icons.close,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
