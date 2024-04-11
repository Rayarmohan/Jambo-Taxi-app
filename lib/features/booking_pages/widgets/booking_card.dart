import 'package:flutter/material.dart';
import '../../../utils/color/app_colors.dart';

class BookingCard extends StatelessWidget {
  final String statusText;
  const BookingCard({
    Key? key,
    required this.statusText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Card(
        elevation: 4,
        child: Column(
          mainAxisSize: MainAxisSize.min, // Add this line
          children: [
            ListTile(
              leading: const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                    'assets/images/profile.png'), // Your profile image
              ),
              title: Text('Jessica'),
              subtitle: Text('CRN: #854HG23'),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.primeryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      statusText,
                      style: TextStyle(color: AppColors.white),
                    ),
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconText(icon: Icons.location_on, text: '4.5 mile'),
                IconText(icon: Icons.access_time, text: '4 mins'),
                IconText(icon: Icons.monetization_on_rounded, text: 'Rs. 125'),
              ],
            ),
            const SizedBox(height: 20.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Date & Time',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Oct 26, 2024 | 08:00 AM'),
              ],
            ),
            const Divider(),
            const SizedBox(height: 8.0),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 20.0),
                    Icon(Icons.my_location_outlined,
                        color: AppColors.primeryColor),
                    SizedBox(width: 20),
                    Text('219 Florida Rd, Durban'),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    SizedBox(width: 20.0),
                    Icon(Icons.location_on, color: AppColors.primeryColor),
                    SizedBox(width: 20.0),
                    Text('KwaZulu-Natal, Cape Town'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {},
              child:   Row(
                children: [
                  Text('Booking car type',
                  style:Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(height: 1.7, color: AppColors.white)),
                  Spacer(),
                  Text('Sedan',
                      style:Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(height: 1.7, color: AppColors.white)),
                  Icon(Icons.chevron_right),
                ],
              ),
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // Border radius
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 30.0, color: AppColors.primeryColor),
        SizedBox(width: 4.0),
        Text(text),
      ],
    );
  }
}
