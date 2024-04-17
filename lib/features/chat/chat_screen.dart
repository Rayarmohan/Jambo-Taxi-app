import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jambotaxi/features/chat/chat_controller.dart';
import 'package:jambotaxi/features/chat/widget/message_row.dart';
import 'package:jambotaxi/utils/color/app_colors.dart';
import 'package:jambotaxi/widgets/custom_images.dart';
import 'package:jambotaxi/widgets/custom_text_field.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ChatController controller = Get.put(ChatController());
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColors.primeryColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const CustomPngImage(
              imageName: "assets/images/arrow_back.png",
              height: 30,
              width: 30,
            ),
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
                MessageRow(message: 'Hello', isMe: true, time: '08:04 pm'),
                MessageRow(message: 'Hello', isMe: false, time: '08:04 pm'),
                MessageRow(
                    message: 'Hello, are you nearby?',
                    isMe: true,
                    time: '08:04 pm'),
                MessageRow(
                    message: 'I\'ll be there in few min',
                    isMe: false,
                    time: '08:05 pm'),
                MessageRow(
                    message: 'I\'m in the location',
                    isMe: true,
                    time: '08:04 pm'),
              ],
            ),
          ),
          Column(
            children: [
              const Divider(),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 70,
                      child: CustomTextFieldInt(
                        keyboardType: TextInputType.multiline,
                        controller: controller.chatController,
                        hint: 'Type message',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: AppColors.primeryColor,
                    child: IconButton(
                      icon:
                          const Icon(Icons.arrow_forward_ios, color: Colors.white),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
