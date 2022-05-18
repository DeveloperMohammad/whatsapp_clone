
import 'package:flutter/material.dart';
import 'package:whatsapp/constants/colors.dart';
import 'package:whatsapp/constants/styles.dart';

import 'package:whatsapp/models/chat.dart';
import 'package:whatsapp/widgets/chat_screen/build_horizontal_icon_button.dart';
import 'package:whatsapp/widgets/chat_screen/chat_info_header.dart';
import 'package:whatsapp/widgets/chat_screen/mute_notifications_switch.dart';

class ChatInfoScreen extends StatelessWidget {
  const ChatInfoScreen({Key? key}) : super(key: key);

  static const routeName = '/chat_info';

  @override
  Widget build(BuildContext context) {
    final chat = ModalRoute.of(context)!.settings.arguments as Chat;

    return Scaffold(
      backgroundColor: const Color(0xffF7F8FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //! Chat Info Screen Header Widget
              ChatInfoHeader(chat: chat),
              //! ------------------------------
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                    top: 20, bottom: 10, left: 15, right: 15),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'In a meeting',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'November 24, 2022',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        buildHorizontalIconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications,
                            color: buttonGreyColor,
                          ),
                          label: const Text(
                            'Mute notifications',
                            style: chatInfoScreenButtonTextStyle,
                          ),
                        ),
                        const Spacer(),
                        const MuteNotificationsSwitch(),
                      ],
                    ),
                    buildHorizontalIconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.audiotrack,
                        color: buttonGreyColor,
                      ),
                      label: const Text(
                        'Custom notifications',
                        style: chatInfoScreenButtonTextStyle,
                      ),
                    ),
                    buildHorizontalIconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.photo,
                        color: buttonGreyColor,
                      ),
                      label: const Text(
                        'Media Visibility',
                        style: chatInfoScreenButtonTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    buildHorizontalIconButton(
                      label: const Text(
                        'Encryption',
                        style: chatInfoScreenButtonTextStyle,
                      ),
                      icon: const Icon(
                        Icons.lock,
                        color: buttonGreyColor,
                      ),
                      subtitle: const Text('Messages and calls are end-to-end'),
                      onPressed: () {},
                    ),
                    buildHorizontalIconButton(
                      label: const Text(
                        'Disappearing messages',
                        style: chatInfoScreenButtonTextStyle,
                      ),
                      icon: const Icon(
                        Icons.timer,
                        color: buttonGreyColor,
                      ),
                      subtitle: const Text('Off'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    buildHorizontalIconButton(
                      label: const Text('Block Ahmad',
                          style: chatInfoScreenButtonTextStyleRed),
                      icon: const Icon(
                        Icons.block,
                        color: Color(0xffEA0038),
                      ),
                      onPressed: () {},
                    ),
                    buildHorizontalIconButton(
                      label: const Text('Report Ahmad',
                          style: chatInfoScreenButtonTextStyleRed),
                      icon: const Icon(
                        Icons.thumb_down,
                        color: Color(0xffEA0038),
                      ),
                      onPressed: () {
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
} //! The last closing parenthesis
