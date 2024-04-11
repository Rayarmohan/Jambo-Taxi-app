import 'package:flutter/material.dart';
import 'package:jambotaxi/features/booking_pages/widgets/vertical_line_painter.dart';
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
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,// Add this line
          children: [
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.only(top: 8.0,),
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
                    padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 2),
                    decoration: const BoxDecoration(
                      color: AppColors.primeryColor,
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Text(
                      statusText,
                      style: const TextStyle(color: AppColors.white,
                      fontSize: 10),
                    ),
                  ),
                  const SizedBox(height: 8.0,),
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20.0),
                Column(
                  children: [
                    const SizedBox(width: 50.0),
                    const Icon(Icons.my_location_outlined,
                        color: AppColors.primeryColor),
                    SizedBox(
                      height: 15,
                      child: CustomPaint(
                        painter: VerticalLinePainter(color: AppColors.primeryColor, thickness: 1),
                      ),
                    ),
                    const Icon(Icons.location_on, color: AppColors.primeryColor),
                  ],
                ),

                SizedBox(width: 20.0),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('219 Florida Rd, Durban'),
                    Divider(color: AppColors.grey,),
                    SizedBox(height: 10.0),
                    Text('KwaZulu-Natal, Cape Town'),
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
              child:   Row(
                children: [
                  Text('Booking car type',
                  style:Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(height: 1.7, color: AppColors.white)),
                  const SizedBox(
                    width: 18.5,
                  ),
                  Text('Sedan',
                      style:Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(height: 1.7, color: AppColors.white)),
                  const Icon(Icons.chevron_right),
                ],
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
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 30.0, color: AppColors.primeryColor),
        const SizedBox(width: 4.0),
        Text(text),
      ],
    );
  }
}
