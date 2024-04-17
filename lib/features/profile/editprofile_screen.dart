// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/features/bottom_navigation/bottom_navigation.dart';
import 'package:jambotaxi/features/profile/widgets/editProfile_controller.dart';
import 'package:jambotaxi/features/profile/widgets/update_photo.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_images.dart';
import 'package:jambotaxi/widgets/custom_text_field.dart';
import 'dart:math' as math;

import '../Registration/registration_screen.dart';


class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    final EditprofileCon controller = Get.put(EditprofileCon());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: Text('Profile',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(height: 1.7, color: AppColors.primeryColor)),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: CustomPngImage(
              imageName: "assets/images/arrow_back.png",
              height: 30,
              width: 30,
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileUpdate(
                  imagePath: "assets/images/profile_pic.png",
                  onUpdate: () {
                  
                  }),
              SizedBox(
                height: 5,
              ),
              Center(
                  child: Text("Eric Selvick",
                       style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(height: 1.7, color: AppColors.primeryColor))),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColors.grey
                      )),
                      SizedBox(height: 10,),
                      //  Container(
                      //   height: 50,
                      //   width: 500,
                      //   padding: const EdgeInsets.all(10),
                      //   decoration: BoxDecoration(
                      //     border: Border.all(
                      //       width: 1,
                      //       color: AppColors.grey,
                      //     ),
                      //   ),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.start,
                      //     children: [
                      //       Text(
                      //         "Eric Selvick",
                      //         style: Theme.of(context)
                      //             .textTheme
                      //             .bodyMedium!
                      //             .copyWith(
                      //               height: 1.7,
                      //               color: AppColors.black,
                      //             ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      CustomTextField(controller: controller.nameController, hint: "Eric Selvick", ),
                       SizedBox(height: 10,),
                      Text("Phone Number",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColors.grey
                      )),
                      SizedBox(height: 10,),
          Row(
            children: [
              Obx(
                    () => Container(
                  height: 48.h,
                  width: 80.h,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),

                    borderRadius: BorderRadius.all(Radius.circular(1)),
                  ),
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
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Transform.rotate(
                          angle: -math.pi / 2,
                          child: Icon(Icons.arrow_back_ios, color: Colors.grey, size: 15,),
                        ),
                      ),
                      alignment: Alignment.centerRight,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 48.h,
                  width: 200.h,
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide( //                   <--- right side
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      bottom:  BorderSide( //                   <--- right side
                      color: Colors.grey,
                      width: 1.0,
                    ),
                      top: BorderSide( //                   <--- right side
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    ),

                    borderRadius: BorderRadius.all(Radius.circular(1)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("87987656788"),
                        Text("Change",
                        // style: TextStyle(
                        //     fontSize: 14,
                        //     fontWeight: FontWeight.normal,
                        //     color: AppColors.grey
                        // ),
                        )
                      ],
                    ),
                  ),
                ),

              ),
            ],
          ),

                    SizedBox(
                      height: 15.h,
                    ),
                      Text("Email",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColors.grey
                      )),
                      SizedBox(height: 10,),
                      CustomTextField(controller: controller.emailController, hint: "Example@gmail.com"),
                    SizedBox(
                      height: 5.h,
                    ),Text("City You Drive In",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(height: 1.7, color: AppColors.grey)),
                            SizedBox(height: 10,),
                    Obx(
                      () => Container(
                        height: 48.h,
                        width: 500.h,
                        padding: const EdgeInsets.all(10),
                        decoration:BoxDecoration(
                          border: Border.all(color: Colors.grey),

                          borderRadius: BorderRadius.all(Radius.circular(1)),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: controller.citydropdownValue.value,
                            onChanged: (String? newValue) {
                              controller.setCityDropdownValue(newValue!);
                            },
                            items:
                                <String>['Nairobi,Africa', 'Cape Town, Africa'].map((String value) {
                              return DropdownMenuItem<String>(
                                alignment: AlignmentDirectional.center,
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontFamily: "SF Pro Display",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    height: 1.275,
                                    color: Colors.black,
                                  ),
                                ),
                              );
                            }).toList(),
                            icon: Transform.rotate(
                              angle: -math.pi / 2,
                              child: Icon(Icons.arrow_back_ios, color: Colors.black, size: 15,),
                            ),
                          ),
                        ),
                      ),
                    ),

                      SizedBox(height: 10,),
                      Text("Documents",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColors.grey
                      )),
                      SizedBox(height: 10,),
                       Container(
                        height: 50,
                        width: 500,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),

                          borderRadius: BorderRadius.all(Radius.circular(1)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Update Documents Details",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    height: 1.7,
                                    color: AppColors.primeryColor,
                                  ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("Date Of Birth",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColors.grey
                      )),
                      SizedBox(height: 10,),
                      CustomTextField(controller: controller.enterdobController, hint: "Enter DOB")
                ],
              )
            ],
          ),
        ),
       
      )),
      
    );
  }
}
