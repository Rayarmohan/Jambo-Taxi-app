import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jambotaxi/features/cancel_ride/cancel_reason_radio.dart';
import 'package:jambotaxi/features/cancel_ride/cancel_ride_successful.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_app_bar.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class CancelRideScreen extends StatelessWidget {
  const CancelRideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      appBar: CustomAppBar(
        title: Text('Cancel Ride',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(height: 1.7, color: AppColors.primeryColor)),
        leading: const Padding(
          padding: EdgeInsets.all(8),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                      child: Text(
                        'Please select the reason for cancellation:',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.primeryColor, fontSize: 12),
                      ),
                    ),
                    const Expanded(
                      child: CancelReason(), // Add the CancelReason widget here
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey.shade300,
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Other',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppColors.grey)),
                    const SizedBox(
                        height:
                            10), // Add some space between the label and the text field
                    TextField(
                      maxLines: 9,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    Colors.grey.shade300), // Light grey border
                            borderRadius: BorderRadius.zero, // Sharp edges
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey
                                    .shade300), // Light grey border for enabled state
                            borderRadius: BorderRadius.zero,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          hintText: 'Enter your reason',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: AppColors.primeryColor)),
                    ),
                  ],
                ),
              ),
            ),
            CustomButton(
              height: 60,
              width: 0.9.sw,
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return CancelSuccess();
                    });
              },
              text: "Cancel Ride",
              color: AppColors.primeryColor,
            )
          ],
        ),
      ),
    );
  }
}
