import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chat_screen/chat_detail_screen.dart';

import '../../models/chat.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Chat item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed(ChatDetailScreen.routeName, arguments: item);
      },
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage('assets/images/${item.imageUrl}'),
      ),
      title: Text(item.title),
      subtitle: Text(
        item.lastMessage,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: item.color),
      ),
      trailing: SizedBox(
        child: SizedBox(
          width: 65,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                item.date,
                style: TextStyle(
                  color: item.unreadMessage == 0 ? Colors.black : Colors.green,
                ),
              ),
              item.unreadMessage == 0
                  ? const SizedBox.shrink()
                  : CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                      child: Text(
                        item.unreadMessage.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}