// ignore_for_file: non_constant_identifier_names, camel_case_types, unnecessary_const

import 'package:flutter/material.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class Arrived_Userlocation extends StatelessWidget {
  const Arrived_Userlocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: CustomPngImage(
            imageName: 'assets/images/map.png',
            boxFit: BoxFit.cover,
          ),
        ),
        _buildbar(context),
         Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 120, right: 150.0),
                child: CustomPngImage(
                  height: 30,
                  width: 15,
                  imageName: 'assets/images/pointer.png',
                  boxFit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 65.0),
                child: CustomPngImage(
                  height: 200,
                  width: 85,
                  imageName: 'assets/images/mappath.png',
                  boxFit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 75, right: 120.0),
                child: CustomPngImage(
                  height: 50,
                  width: 50,
                  imageName: 'assets/images/car (2).png',
                  boxFit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: _PassangerRequest(context),
        ),
      ],
    );
  }

  Widget _PassangerRequest(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      height: 240,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Customer Location",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w500, color: AppColors.primeryColor),
              ),
              Text(
                "5 min away",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primeryColor),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            thickness: 0.8,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            child: CustomPngImage(
                              height: 70,
                              width: 70,
                              imageName: 'assets/images/circleimage.png',
                            ),
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jessica ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.primeryColor),
                              ),
                              Text(
                                "Cash payment ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.primeryColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: AppColors.primeryColor,
                            child: Icon(
                              Icons.mark_unread_chat_alt_outlined ,
                              color: AppColors.white,
                            ),
                          ),
                          SizedBox(width: 8,),
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.green,
                            child: Icon(
                              Icons.call,
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // const Row(
                //   children: [
                //     const CircleAvatar(
                //       radius: 20,
                //       backgroundColor: AppColors.primeryColor,
                //       child: Icon(
                //         Icons.currency_rupee,
                //         color: AppColors.white,
                //       ),
                //     ),
                //     const CircleAvatar(
                //       radius: 20,
                //       backgroundColor: AppColors.primeryColor,
                //       child: Icon(
                //         Icons.currency_rupee,
                //         color: AppColors.white,
                //       ),
                //     ),
                //   ],
                // ),
                // ListTile(
                //   leading: const CircleAvatar(
                //     radius: 30,
                //     child: CustomPngImage(
                //       height: 70,
                //       width: 70,
                //       imageName: 'assets/images/circleimage.png',
                //     ),
                //   ),
                //   title: Text(
                //     "Jessica ",
                //     style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                //         fontWeight: FontWeight.w600,
                //         color: AppColors.primeryColor),
                //   ),
                //   subtitle: Text(
                //     "Cash payment ",
                //     style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                //         fontWeight: FontWeight.w400,
                //         color: AppColors.primeryColor),
                //   ),
                // ),

                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 40,
                  child: CustomButton(
                    onPressed: () {},
                    child: Text(
                      'Arrived',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 15, color: AppColors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildbar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            width: 220,
            height: 48,
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Icon(
                    size: 25,
                    Icons.person,
                    color: AppColors.primeryColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 40,
            height: 48,
            color: Colors.grey,
            child: Center(
              child: Text("OFF",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 15, height: 1.7, color: AppColors.white)),
            ),
          ),
          Container(
            width: 40,
            height: 48,
            color: const Color.fromARGB(255, 92, 204, 94),
            child: Center(
              child: Text("ON",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 15, height: 1.7, color: AppColors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
