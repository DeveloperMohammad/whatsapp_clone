import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat.dart';
import 'package:whatsapp/widgets/chat_screen/build_vertical_icon_button.dart';

class ChatInfoHeader extends StatelessWidget {
  const ChatInfoHeader({
    Key? key,
    required this.chat,
  }) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, bottom: 30, left: 5, right: 5),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.black),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/${chat.imageUrl}'),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            chat.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            '+90 32 003 3299',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff667781),
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xffF7F8FA),
            ),
            child: const Text(
              'Last seen today at 10:30 PM',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff667781),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildVerticalIconButton(
                onPressed: () {},
                icon: Icons.chat,
                label: 'Chat',
              ),
              const SizedBox(width: 40),
              buildVerticalIconButton(
                onPressed: () {},
                icon: Icons.call,
                label: 'Audio',
              ),
              const SizedBox(width: 40),
              buildVerticalIconButton(
                onPressed: () {},
                icon: Icons.videocam,
                label: 'Video',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
