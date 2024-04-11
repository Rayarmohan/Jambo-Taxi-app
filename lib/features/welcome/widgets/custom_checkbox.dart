import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';

class CustomCheckbox extends StatelessWidget {
  final RxBool isChecked;
  final void Function(bool) onChanged;
  final String termsText;

  const CustomCheckbox({
    super.key,
    required this.isChecked,
    required this.onChanged,
    this.termsText = 'By Accept, you agree to Company Terms & Conditions',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      
      children: [
        Obx(
          () => Checkbox(
            checkColor: AppColors.white,
            value: isChecked.value,
            onChanged: (bool? value) {
              onChanged(value!);
            },
            activeColor: AppColors.primeryColor,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            termsText,
            style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(height: 1.7, color: AppColors.primeryColor),
          ),
        ),
      ],
    );
  }
}
