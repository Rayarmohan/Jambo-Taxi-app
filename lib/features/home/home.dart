// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
        _buildContentColumn(context),
        const Padding(
          padding: const EdgeInsets.only(right: 30,bottom: 90),
          child: Align(
            alignment: Alignment.center,
            child:CustomPngImage(
              height: 50,
              width: 50,
            imageName: 'assets/images/location.png',
            boxFit: BoxFit.cover,
          ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, bottom: 20),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: _listview(),
          ),
        ),
      ],
    );
  }

  Widget _listview() {
    return Container(
      height: 130,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: ((context, index) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1.0, color: Colors.black)),
                      height: 130,
                      width: 180,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, top: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: const CustomPngImage(
                                    height: 26,
                                    width: 54.6,
                                    imageName: 'assets/images/car.png',),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                    width: 1.0,
                                    color: Colors.black,
                                    style: BorderStyle.solid),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0,left: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Text("Swift",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.primeryColor)),
                                                  SizedBox(width: 41,),
                                      Text("Rs 104.0",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: AppColors.primeryColor)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("4 Seats Capacity",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                height: 1.7,
                                                 fontSize: 12,
                                                 fontWeight: FontWeight.w400,
                                                  color:
                                                      AppColors.primeryColor)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 1,
                      right: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors
                              .white, 
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.check_circle,
                          color: AppColors.primeryColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ));
          })),
    );
  }

  Widget _buildContentColumn(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.white,
                    width: 225,
                    height: 44,
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
                    height: 44,
                    color: Colors.grey,
                    child: Center(
                      child: Text("OFF",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontSize: 15,
                                  height: 1.7,
                                  color: AppColors.white)),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 44,
                    color: const Color.fromARGB(255, 92, 204, 94),
                    child: Center(
                      child: Text("ON",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontSize: 15,
                                  height: 1.7,
                                  color: AppColors.white)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 75,
                      width: 150,
                      color: AppColors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: AppColors.primeryColor,
                            child: Icon(
                              Icons.calendar_month,
                              color: AppColors.white,
                            ),
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Pre Booked",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.primeryColor)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text("10",
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            fontSize: 15,
                                            color: AppColors.primeryColor)),
                              ],
                            ),
                          )
                        ],
                      )),
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                      height: 75,
                      width: 150,
                      color: AppColors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: AppColors.primeryColor,
                            child: Icon(
                              Icons.currency_rupee,
                              color: AppColors.white,
                            ),
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total Earned",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.primeryColor)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text("754.00",
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            fontSize: 15,
                                            color: AppColors.primeryColor)),
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
