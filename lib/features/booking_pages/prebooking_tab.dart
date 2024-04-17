// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jambotaxi/features/booking_pages/widgets/booking_card.dart';
import 'package:jambotaxi/features/booking_pages/widgets/booking_card_expandable.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_button.dart';

import '../../utils/color/app_colors.dart';
import '../../widgets/custom_images.dart';

class PrebookingComplete extends StatelessWidget {
  const PrebookingComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: CustomAppBar(
            title: Text('Pre-Booked',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(height: 1.7, color: AppColors.primeryColor)),
            leading: const Padding(
              padding: EdgeInsets.only(left: 34),
              child: CustomPngImage(
                imageName: "assets/images/arrow_back.png",
                height: 30,
                width: 30,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(children: <Widget>[
              const Material(
                color: AppColors.white, // Use your preferred color
                child: TabBar(
                  labelColor: AppColors.primeryColor,
                  unselectedLabelColor: AppColors.grey,
                  tabs: [
                    Tab(text: 'Ongoing'),
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
                          BookingCardexpandable(statusText: 'Ongoing'),
                          const SizedBox(
                            height: 10,
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
          ),
        ));
  }
}
