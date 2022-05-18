import 'package:flutter/material.dart';
import 'package:whatsapp/constants/colors.dart';
import 'package:whatsapp/models/message.dart';

class SentMessage extends StatelessWidget {
  const SentMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(2),
          topLeft: Radius.circular(8),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        color: lightGreenColor,
      ),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          text: message.text,
          children: [
            TextSpan(
              text: '  ${message.date}',
              style: const TextStyle(
                fontSize: 12,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.end,
      ),
    );
  }
}
