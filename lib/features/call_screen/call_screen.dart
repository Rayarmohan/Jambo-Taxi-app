import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background with blurred image
          Positioned.fill(
            child: Image.asset(
              'assets/images/profile_pic.png',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.black.withOpacity(0),
              ),
            ),
          ),
          // Foreground content centered with correct border
          Center(
            // Center the content vertically and horizontally
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white, width: 3), // White border
                    borderRadius:
                        BorderRadius.circular(100), // Slight border radius
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        100), // Border radius for the image itself
                    child: const CustomPngImage(
                      height: 200,
                      width: 200,
                      imageName: 'assets/images/profile_pic.png',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Eric Selvick',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '00:48',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        color: AppColors.primeryColor,
        height: 80,
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.volume_up,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.mic_off,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 50,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.videocam,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.chat_bubble,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Positioned(
              top: -30, // Negative value to raise the button up
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.primeryColor),
                child: Center(
                  child: Container(
                    height: 60,
                    width: 60,
                    child: FloatingActionButton(
                      child: Icon(Icons.call_end, size: 40),
                      onPressed: () {},
                      backgroundColor: Colors.red, // Custom color for the FAB
                      elevation: 4.0, // Shadow for the button
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
