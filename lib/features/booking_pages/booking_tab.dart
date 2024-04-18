import 'package:flutter/material.dart';
import 'package:jambotaxi/features/booking_pages/widgets/booking_card.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_button.dart';

import '../../utils/color/app_colors.dart';

class BookingComplete extends StatelessWidget {
  const BookingComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: CustomAppBar(
            title: Text('Bookings',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(height: 1.7, color: AppColors.primeryColor)),
            leading: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.grey),
                      color: Colors.white,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30))),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.primeryColor,
                        size: 20,
                      ),
                    ),
                  )),
            ),

            // const CustomPngImage(
            //   imageName: "assets/images/arrow_back.png",
            //   height: 30,
            //   width: 30,
            // ),
          ),
          body: Column(children: <Widget>[
            const Material(
              color: AppColors.white, // Use your preferred color
              child: TabBar(
                labelColor: AppColors.primeryColor,
                unselectedLabelColor: AppColors.grey,
                tabs: [
                  Tab(text: 'Current Trip'),
                  Tab(text: 'Complete'),
                  Tab(text: 'Cancelled'),
                ],
                indicatorColor:
                    AppColors.primeryColor, // Correct field name is needed
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const BookingCard(statusText: 'Ongoing'),
                        Container(
                          width: 400,
                          height: 300,
                          padding: const EdgeInsets.all(20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4.0),
                            child: Stack(
                              alignment: Alignment
                                  .center, // Align the top image to the center of the map image
                              children: [
                                Image.asset(
                                  "assets/images/map.png",
                                  fit: BoxFit.cover,
                                  width: double
                                      .infinity, // Ensure the map image fills the container
                                  height: double.infinity,
                                ),
                                Image.asset(
                                  "assets/images/Vector.png", // Replace with the path of your top image
                                  width: 100, // Set the width of the top image
                                  height:
                                      100, // Set the height of the top image
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 165,
                              height: 50,
                              child: CustomButton(
                                onPressed: () {
                                  // Handle button 1 press
                                },
                                child: Text(
                                  'Cancel',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: AppColors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 165,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Handle button 2 press
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.zero, // No border radius
                                  ),
                                ),
                                child: const Text('Track Ride'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    itemCount: 5, // Number of items in the list
                    itemBuilder: (context, index) {
                      return const BookingCard(
                          statusText:
                              'Complete'); // Return a BookingCard for each item
                    },
                  ),
                  ListView.builder(
                    itemCount: 5, // Number of items in the list
                    itemBuilder: (context, index) {
                      return const BookingCard(
                          statusText:
                              'Cancelled by you'); // Return a BookingCard for each item
                    },
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
