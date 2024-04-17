// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jambotaxi/features/booking_pages/widgets/vertical_line_painter.dart';
import 'package:jambotaxi/widgets/custom_images.dart';
import '../../../utils/color/app_colors.dart';

class BookingCard extends StatelessWidget {
  final String statusText;
  const BookingCard({
    super.key,
    required this.statusText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Card(
         shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: BorderSide(color: Color(0xFFEDEDED), width: 1.0),
        ),
        elevation: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Add this line
          children: [
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.only(
                  top: 8.0,
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                      'assets/images/profile.png'), // Your profile image
                ),
              ),
              title: const Text('Jessica'),
              subtitle: const Text('CRN: #854HG23'),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: const BoxDecoration(
                      color: AppColors.primeryColor,
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Text(
                      statusText,
                      style:
                          const TextStyle(color: AppColors.white, fontSize: 10),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      Text(' 5/5'),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // IconText(icon: Icons.location_on, text: '4.5 mile'),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomPngImage(
                        imageName: "assets/images/newlocation_icon.png",
                        height: 20,
                        width: 15,
                      ),
                      SizedBox(width: 8.h),
                      Text("4.5 mile",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    height: 1.7,
                                    color: AppColors.primeryColor,
                                    fontSize: 14,
                                  ))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomPngImage(
                        imageName: "assets/images/clock_icon.png",
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: 8.h),
                      Text("4 mins",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    height: 1.7,
                                    color: AppColors.primeryColor,
                                    fontSize: 14,
                                  ))
                    ],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomPngImage(
                        imageName: "assets/images/wallet.png",
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: 8.h),
                      Text("Rs. 125",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    height: 1.7,
                                    color: AppColors.primeryColor,
                                    fontSize: 14,
                                  ))
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Date & Time',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            height: 1.7,
                            color: AppColors.primeryColor,
                            fontSize: 14,
                          )),
                  Text('Oct 26, 2024 | 08:00 AM',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            height: 1.7,
                            color: AppColors.primeryColor,
                            fontSize: 14,
                          )),
                ],
              ),
            ),
            const Divider(),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 50.0),
                    CustomPngImage(
                      imageName: "assets/images/starting_icon.png",
                      height: 15,
                      width: 15,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    CustomPngImage(
                      imageName: "assets/images/line_icon.png",
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    CustomPngImage(
                      imageName: "assets/images/newlocation_icon.png",
                      height: 15,
                      width: 11,
                    ),
                  ],
                ),
                SizedBox(width: 20.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('219 Florida Rd, Durban',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              height: 1.7,
                              color: AppColors.primeryColor,
                              fontSize: 14,
                            )),
                    CustomPngImage(
                      imageName: "assets/images/line.png",
                      width: 254,
                    ),
                    Text('KwaZulu-Natal, Cape Town',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              height: 1.7,
                              color: AppColors.primeryColor,
                              fontSize: 14,
                            )),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // Border radius
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Booking car type',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  height: 1.7,
                                  color: AppColors.white,
                                  fontSize: 12)),
                      const SizedBox(
                        width: 13,
                      ),
                      Text('Sedan',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  height: 1.7,
                                  color: AppColors.white,
                                  fontSize: 14)),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.chevron_right),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


