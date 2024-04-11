import 'package:flutter/material.dart';
import 'package:jambotaxi/features/chat/widget/message_row.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_images.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColors.primeryColor,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomPngImage(
            imageName: "assets/images/arrow_back.png",
            height: 30,
            width: 30,
          ),
        ),
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            radius: 30,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/Propic.png"),
                  fit:
                      BoxFit.fitHeight, // This will make the image fit properly
                ),
              ),
            ),
          ),
          title: const Text('Jessica', style: TextStyle(color: Colors.white)),
          subtitle: Text('Online',
              style: TextStyle(color: Colors.white.withOpacity(0.7))),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: AppColors.green,
              child: IconButton(
                icon: const Icon(Icons.call, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12),
              children: const [
                MessageRow(message: 'Hello', isMe :false,time:  '08:04 pm'),
                MessageRow(message: 'Hello',isMe:  true,time:  '08:04 pm'),
                MessageRow(message: 'Hello, are you nearby?',isMe:  false,time:  '08:04 pm'),
                MessageRow(message: 'I\'ll be there in few min',isMe:  true,time:  '08:05 pm'),
                MessageRow(message: 'I\'m in the location',isMe:  false,time:  '08:04 pm'),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 70,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Type message",
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.zero, // Set the border radius to zero
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5,),
              CircleAvatar(
                backgroundColor: AppColors.primeryColor,
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
                  onPressed: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
