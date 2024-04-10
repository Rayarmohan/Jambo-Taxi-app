// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class Ride_Request extends StatelessWidget {
  const Ride_Request({super.key});

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
        const Padding(
          padding: const EdgeInsets.only(right: 160,bottom: 240),
          child: Align(
            alignment: Alignment.centerRight,
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
            alignment: Alignment.center,
            child: _buildTimer(context),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: _PassangerRequest(context),
        ),
      ],
    );
  }

  Widget _buildTimer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(60)),
        color: Colors.white,
        border: Border.all(
          color: AppColors.primeryColor,
          width: 4, // Adjust the width of the border
        ),
      ),
      height: 90,
      width: 90,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "30",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 30, color: AppColors.primeryColor),
                ),
                Text(
                  "Seconds",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 10, color: AppColors.primeryColor),
                ),
              ],
            ),
          ),
          const CircularProgressIndicator(
            value: null,
            backgroundColor: Colors.transparent,
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primeryColor),
            strokeWidth: 1, // Adjust the thickness of the progress indicator
          ),
        ],
      ),
    );
  }

  Widget _PassangerRequest(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      height: 290,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Ride Request",
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
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    radius: 30,
                    child: CustomPngImage(
                      height: 70,
                      width: 70,
                      imageName: 'assets/images/circleimage.png',
                    ),
                  ),
                  title: Text(
                    "Jessica ",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.primeryColor),
                  ),
                  subtitle: Text(
                    "Cash payment ",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.primeryColor),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      children: [
                        Icon(
                          Icons.radio_button_checked_rounded,
                          size: 19,
                        ),
                        SizedBox(
                            height: 30,
                            child: VerticalDivider(
                              thickness: 0.5,
                              color: Colors.black,
                            )),
                        Icon(
                          Icons.location_on,
                          size: 19,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "219 Florida Rd, Durban ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primeryColor),
                        ),
                        Row(
                          children: [
                            const SizedBox(
                                width: 210,
                                child: Divider(
                                  thickness: 0.6,
                                  color: Colors.black,
                                )),
                            Container(
                                height: 25,
                                color: AppColors.primeryColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "10 min trip",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.white),
                                  ),
                                ))
                          ],
                        ),
                        Text(
                          "KwaZulu-Natal, Cape Town ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primeryColor),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 140,
                      height: 40,
                      child: CustomButton(
                        onPressed: () {},
                        child: Text(
                          'Decline',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 15, color: AppColors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 140,
                      height: 40,
                      child: CustomButton(
                        color: Colors.green,
                        onPressed: () {},
                        child: Text(
                          'Accept',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 15, color: AppColors.white),
                        ),
                      ),
                    ),
                  ],
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
