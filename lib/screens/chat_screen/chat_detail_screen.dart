import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:whatsapp/constants/enums.dart';
import 'package:whatsapp/models/chat.dart';
import 'package:whatsapp/screens/chat_screen/chat_info_screen.dart';
import 'package:whatsapp/widgets/chat_screen/received_message.dart';

import 'package:whatsapp/models/message.dart';
import 'package:whatsapp/widgets/chat_screen/sent_message.dart';

class ChatDetailScreen extends StatelessWidget {
  const ChatDetailScreen({Key? key}) : super(key: key);

  static const routeName = '/chat_detail';

  @override
  Widget build(BuildContext context) {
    final chat = ModalRoute.of(context)!.settings.arguments as Chat;

    return Scaffold(
      backgroundColor: const Color(0xffECE6E0),
      appBar: AppBar(
        titleSpacing: 0,
        leadingWidth: 35,
        title: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(ChatInfoScreen.routeName, arguments: chat);
          },
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/${chat.imageUrl}'),
              ),
              const SizedBox(width: 5),
              Text(chat.title),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: sentMessages.length,
        itemBuilder: (context, index) {
          final message = sentMessages[index];
          return Row(
            mainAxisAlignment: message.messageType == MessageType.received
                ? MainAxisAlignment.start
                : MainAxisAlignment.end,
            children: [
              const SizedBox.shrink(),
              Flexible(
                child: message.messageType == MessageType.sent
                    ? SentMessage(message: message)
                    : ReceivedMessage(message: message),
              ),
            ],
          );
        },
      ),
      bottomSheet: Container(
        color: const Color(0xffECE6E0),
        padding: const EdgeInsets.all(5.0),
        child: SizedBox(
          height: 60,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: Row(
                    children: [
                      buildMoodButton(),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Message',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      buildAttachFileButton(),
                      buildCameraButton(),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 5),
              buildVoiceButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMoodButton() {
    return IconButton(
      onPressed: () {
        log('Show Stickers');
      },
      icon: const Icon(Icons.mood, color: Colors.grey),
    );
  }

  Widget buildAttachFileButton() {
    return Transform.rotate(
      angle: 45,
      child: IconButton(
        onPressed: () {
          log('Attach media');
        },
        icon: const Icon(Icons.attachment, color: Colors.grey),
      ),
    );
  }

  Widget buildCameraButton() {
    return IconButton(
      onPressed: () {
        log('Open camera');
      },
      icon: const Icon(Icons.photo_camera, color: Colors.grey),
    );
  }

  Widget buildVoiceButton() {
    return GestureDetector(
      onLongPress: () {
        log('Record Audio');
      },
      child: const CircleAvatar(
        radius: 25,
        backgroundColor: Color(0xFF00BFA5),
        child: Icon(
          Icons.keyboard_voice,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}
