// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/features/wallet/add_money_wallet_screen.dart';
import 'package:jambotaxi/features/wallet/widgets/custom_addmoney.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Wallet",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(height: 1.7, color: AppColors.primeryColor),
        ),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                height: 90,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wallet Balance',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  height: 1.7, color: AppColors.primeryColor),
                        ),
                        Text(
                          'Rs.  12000.00',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  height: 1.7, color: AppColors.primeryColor),
                        ),
                      ],
                    ),
                    CustomPngImage(
                      imageName: "assets/images/wallet.png",
                      height: 25,
                      width: 25,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomButton(
                height: 44,
                width: 1.sw,
                onPressed: () {
                  Get.to(AddMoneyToWallet());
                },
                text: "Add Money",
                color: AppColors.green,
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("TODAY",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(height: 1.7, color: AppColors.grey)),
                  SizedBox(
                    height: 11.h,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  CustomListTile(
                    title: 'Money Added Wallet',
                    subtitle:
                        'Lorem Ipsum is that it has a more-or-less \nnormal distribution of letters, as opposed',
                    trailingText: 'Rs. 500.00',
                    trailcolor: AppColors.green,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  CustomListTile(
                    title: 'Booking No# 57878',
                    subtitle:
                        'Lorem Ipsum is that it has a more-or-less \nnormal distribution of letters, as opposed',
                    trailingText: 'Rs. 500.00',
                    trailcolor: AppColors.primeryColor,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  CustomListTile(
                    title: 'Money Added Wallet',
                    subtitle:
                        'Lorem Ipsum is that it has a more-or-less \nnormal distribution of letters, as opposed',
                    trailingText: 'Rs. 500.00',
                    trailcolor: AppColors.green,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  CustomListTile(
                    title: 'Booking No# 57878',
                    subtitle:
                        'Lorem Ipsum is that it has a more-or-less \nnormal distribution of letters, as opposed',
                    trailingText: 'Rs. 500.00',
                    trailcolor: AppColors.primeryColor,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Bottom_Navigation(),
    );
  }
}
