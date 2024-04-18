// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:jambotaxi/features/registration/registration_controller.dart';
import 'package:jambotaxi/features/welcome/welcome_screen.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_text_field.dart';

class RegistartionScreen extends StatelessWidget {
  const RegistartionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final RegistarationController controller =
        Get.put(RegistarationController());
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding:
            EdgeInsets.only(top: 20.h, left: 20.h, right: 20.h, bottom: 20.h),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Complete Profile",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(height: 1.7, color: AppColors.primeryColor),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Don’t worry, only you can see your personal\ndata. No one else will be able to see it",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(height: 1.7, color: AppColors.grey),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(height: 1.7, color: AppColors.grey)),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextField(
                      controller: controller.nameController,
                      hint: 'Eric Selvick',
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text("Email",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(height: 1.7, color: AppColors.grey)),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextField(
                      controller: controller.emailController,
                      hint: 'example@gmail.com',
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text("Phone Number",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(height: 1.7, color: AppColors.grey)),
                    SizedBox(
                      height: 5.h,
                    ),
                    PhoneNumberField(),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text("Gender",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(height: 1.7, color: AppColors.grey)),
                    SizedBox(
                      height: 5.h,
                    ),
                    Obx(
                          () => Container(
                        height: 48.h,
                        width: 500.h,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: AppColors.grey),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            // Ensure the value is null if it's empty or hasn't been selected yet
                            value: controller.genderdropdownValue.value.isEmpty ? null : controller.genderdropdownValue.value,
                            // This will show "Select" when no value is selected (value is null)
                            hint: Text("Select", style: TextStyle(
                              fontFamily: "SF Pro Display",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,  // Use a grey color to indicate placeholder text
                            )),
                            onChanged: (String? newValue) {
                              // Only update the value if it's not null
                              if (newValue != null) {
                                controller.setGenderDropdownValue(newValue);
                              }
                            },
                            items: <String>['Male', 'Female']
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontFamily: "SF Pro Display",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),


                    SizedBox(
                      height: 15.h,
                    ),
                    Text("City You Drive In",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(height: 1.7, color: AppColors.grey)),
                    SizedBox(
                      height: 5.h,
                    ),
                    Obx(
                      () => Container(
                        height: 48.h,
                        width: 500.h,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: AppColors.grey)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: controller.citydropdownValue.value,
                            onChanged: (String? newValue) {
                              controller.setCityDropdownValue(newValue!);
                            },
                            items: <String>[
                              'Kochi, India',
                              'Kollam, India',
                              'Kottayam, India',
                              'Alappuzha, India'
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                alignment: AlignmentDirectional.center,
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontFamily: "SF Pro Display",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 1.275,
                                    color: Colors.black,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text("Date of Birth",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(height: 1.7, color: AppColors.grey)),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextField(
                      controller: controller.nameController,
                      hint: 'Enter DOB',
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(
                          () => Container(
                            width:
                                24, // Control the container width that wraps the checkbox
                            height: 24, // Control the container height
                            child: Checkbox(
                              materialTapTargetSize: MaterialTapTargetSize
                                  .shrinkWrap, // Reduces the tap target size to the size of the checkbox
                              checkColor: AppColors.white,
                              value: controller.isChecked.value,
                              onChanged: (bool? value) {
                                controller.setIsChecked(value!);
                              },
                              activeColor: AppColors.primeryColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: 'By Accept, you agree to Company ',
                              style: TextStyle(
                                  color: AppColors.grey,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.grey),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Terms & Conditions',
                                  style: TextStyle(
                                    color: AppColors.primeryColor,
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColors.primeryColor,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // Open terms and conditions link
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    CustomButton(
                      height: 44.h,
                      width: 1.sw,
                      onPressed: () {
                        print("clicked");

                        Get.to(WelcomeScreen());
                      },
                      text: "Continue",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RegistarationController controller = Get.find();
    return Container(
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey),
      ),
      child: Row(
        children: <Widget>[
          Obx(
            () => Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: controller.dropdownValue.value,
                  onChanged: (String? newValue) {
                    controller.setDropdownValue(newValue!);
                  },
                  items: <String>['+91', '+1', '+44'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          VerticalDivider(
            color: AppColors.grey,
            thickness: 1,
          ),
          Expanded(
            child: TextField(
              controller: controller.phoneController,
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: InputBorder
                    .none, // Ensures no border when enabled and not focused
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,

                hintText: 'Enter Phone Number',
                hintStyle: const TextStyle(
                  fontFamily: "SF Pro Display",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.275,
                  color: Colors.grey,
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
        ],
      ),
    );
  }
}
