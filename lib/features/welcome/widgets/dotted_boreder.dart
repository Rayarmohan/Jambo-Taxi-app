import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class DottedBorderContainer extends StatelessWidget {
  final VoidCallback? onUploadPressed;

  const DottedBorderContainer({super.key, this.onUploadPressed});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,

      radius: const Radius.circular(0),

      dashPattern: const [8, 4],
      strokeWidth: 2,
      color: const Color(0xFFC8C8C8),
      child: InkWell(
        onTap: onUploadPressed,
        child: SizedBox(
          width: 323.h,
          height: 138.h,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                // IconButton(
                //   icon: const Icon(
                //     Icons.file_upload_rounded,
                //     color: AppColors.grey,
                //     size: 40,
                //   ),
                //   onPressed: onUploadPressed,
                // ),
                Image.asset("assets/images/uploadicon.png"),

               const CustomPngImage(
            imageName: "assets/images/upload_arrow.png",
            height: 31,
            width: 27,
          ),
          SizedBox(
            height: 8.h,
          ),

                Text("Upload Documents",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(height: 1.7, color: const Color(0xFFC8C8C8), fontSize: 15))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
