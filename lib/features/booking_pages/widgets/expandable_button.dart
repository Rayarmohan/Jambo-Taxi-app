import 'package:flutter/material.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_button.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class ExpandableBookingCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final VoidCallback onCancel;
  final VoidCallback onTrackRide;
  final Widget? imageName;

  const ExpandableBookingCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onCancel,
    required this.onTrackRide, this.imageName,
  }) : super(key: key);

  @override
  _ExpandableBookingCardState createState() => _ExpandableBookingCardState();
}

class _ExpandableBookingCardState extends State<ExpandableBookingCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              side: BorderSide.none,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(widget.title,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            height: 1.7, color: AppColors.white, fontSize: 12)),
                    const SizedBox(width: 13),
                    Text(widget.subtitle,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            height: 1.7, color: AppColors.white, fontSize: 14)),
                  ],
                ),
                Icon(isExpanded ? Icons.expand_more : Icons.expand_less),
              ],
            ),
          ),
          if (isExpanded) ...[
            SizedBox(
              height: 300, // Adjusted for demonstration
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  CustomPngImage(
                    imageName: "assets/images/prebook_map.png",
                    height: 220,
                    width: 330,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                        height: 44,
                        width: 160,
                        onPressed: widget.onCancel,
                        text: "Cancel",
                      ),
                      CustomButton(
                        color: AppColors.green,
                        height: 44,
                        width: 160,
                        onPressed: widget.onTrackRide,
                        text: "Track Ride",
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ],
      ),
    );
  }
}
