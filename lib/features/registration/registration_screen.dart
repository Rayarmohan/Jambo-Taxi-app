import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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
        padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
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
                  "Don’t worry, only you can see your personal\ndata.No one eise will be able to see it",
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
                    Text("Phone Number",
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
                      controller: controller.nameController,
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
                    Row(
                      children: [
                        Obx(
                          () => Container(
                            height: 48,
                            width: 80,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.grey)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: controller.dropdownValue.value,
                                onChanged: (String? newValue) {
                                  controller.setDropdownValue(newValue!);
                                },
                                items: <String>['+91', '+1', '+44',]
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    alignment: AlignmentDirectional.centerEnd,
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            child: CustomTextFieldInt(
                          controller: controller.phoneController,
                          hint: 'Enter phone number',
                        )),
                      ],
                    ),
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
                        height: 48,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: AppColors.grey)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: controller.genderdropdownValue.value,
                            onChanged: (String? newValue) {
                              controller.setGenderDropdownValue(newValue!);
                            },
                            items:
                                <String>['Male', 'Female'].map((String value) {
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
                    Text("City you drive in",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(height: 1.7, color: AppColors.grey)),
                    SizedBox(
                      height: 5.h,
                    ),
                    Obx(
                      () => Container(
                        height: 48,
                        width: 500,
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
                              'Kochi',
                              'Kollam',
                              'Kottayam',
                              'Alappuzha'
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
                      children: [
                        Obx(
                          () => Checkbox(
                            checkColor: AppColors.white,
                            
                            value: controller.isChecked.value,
                            onChanged: (bool? value) {
                              controller.setIsChecked(value!);
                            },
                            activeColor: AppColors.primeryColor,
                          ),
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: 'By Accept, you agree to Company ',
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Terms & Conditions',
                                  style: TextStyle(color: Colors.blue),
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
                      height: 44,
                      width: 1.sw,
                      onPressed: () {
                        print("clicked");

                        Navigator.push(context, MaterialPageRoute(builder: (context)=> WelcomeScreen()));
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
