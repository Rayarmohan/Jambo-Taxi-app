import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';

class DottedBorderContainer extends StatelessWidget {
  final VoidCallback? onUploadPressed;

  const DottedBorderContainer({super.key, this.onUploadPressed});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      dashPattern: [8, 4],
      strokeWidth: 2,
      color: Colors.grey,
      child: InkWell(
        onTap: onUploadPressed,
        child: Container(
          width: 323.h,
          height: 138.h,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.file_upload_rounded,
                    color: AppColors.grey,
                    size: 40,
                  ),
                  onPressed: onUploadPressed,
                ),
                Text("Upload Documents",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(height: 1.7, color: AppColors.grey))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
