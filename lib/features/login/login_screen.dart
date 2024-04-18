import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/utils/route/route_name.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_text_field.dart';
import 'login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign In",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(height: 1.7),
                ),
                Text("Hi! Welcome back, you’ve been missed",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(height: 1.7, color: AppColors.primeryColor)),
                SizedBox(
                  height: 80.h,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("Phone Number",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(height: 1.7, color: AppColors.grey)),
                  const SizedBox(
                    height: 10,
                  ),
                  const PhoneNumberField(),
                ]),
                SizedBox(
                  height: 80.h,
                ),
                CustomButton(
                  height: 44,
                  width: 1.sw,
                  onPressed: () {
                    print("clicked");
                    Get.toNamed(
                      AppRoute.otpscreen,
                    );
                  },
                  text: "Sign In",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: GestureDetector(
                    onTap: () => Get.toNamed(AppRoute.registrationScreen),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "Don’t have an account? ",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            height: 1.7,
                            color: AppColors.grey,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.grey),
                      ),
                      TextSpan(
                          text: "Sign Up",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  height: 1.7,
                                  color: AppColors.primeryColor,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.primeryColor)),
                    ])),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find();
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
          const VerticalDivider(
            color: AppColors.grey,
            thickness: 1,
          ),
          Expanded(
            child: TextField(
              controller: controller.phoneController,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder
                      .none, // Ensures no border when enabled and not focused
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: 'Enter Phone Number',
                  hintStyle: TextStyle(
                    fontFamily: "SF Pro Display",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.275,
                    color: Colors.black,
                  )),
              keyboardType: TextInputType.phone,
            ),
          ),
        ],
      ),
    );
  }
}
