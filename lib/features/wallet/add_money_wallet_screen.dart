import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class AddMoneyToWallet extends StatelessWidget {
  const AddMoneyToWallet({super.key});

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
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                  SizedBox(
                    height: 25.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: Center(child: Text("100")),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: Center(child: Text("200")),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: Center(child: Text("300")),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: Center(child: Text("400")),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: Center(child: Text("400")),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: Center(child: Text("500")),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: Center(child: Text("600")),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: Center(child: Text("700")),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            CustomButton(
              height: 44,
              width: 1.sw,
              onPressed: () {
                print("clicked");
              },
              text: "Rs.    Enter Amount",
              color: AppColors.primeryColor,
            ),
            SizedBox(
              height: 14.h,
            ),
            CustomButton(
              height: 44,
              width: 1.sw,
              onPressed: () {
                print("clicked");
              },
              text: "Add Money",
              color: AppColors.green,
            )
          ],
        ),
      )),
    );
  }
}
