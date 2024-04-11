// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class UpdateDocument extends StatelessWidget {
  const UpdateDocument({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: Text('Update Document',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(height: 1.7, color: AppColors.primeryColor)),
        leading:  Padding(
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
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 500,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: AppColors.grey,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Customer Service",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            height: 1.7,
                            color: AppColors.black,
                          ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 500,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: AppColors.grey,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Profile Picture",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            height: 1.7,
                            color: AppColors.black,
                          ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 500,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: AppColors.grey,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Driving Details",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            height: 1.7,
                            color: AppColors.black,
                          ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 500,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: AppColors.grey,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Government ID",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            height: 1.7,
                            color: AppColors.black,
                          ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
