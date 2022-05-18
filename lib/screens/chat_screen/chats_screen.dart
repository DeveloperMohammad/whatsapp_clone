import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chat_screen/add_chat_screen.dart';

import 'package:whatsapp/widgets/chat_screen/chat_list_item.dart';
import 'package:whatsapp/models/chat.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dummyChats.length,
        itemBuilder: (context, index) {
          final item = dummyChats[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ChatListItem(item: item),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff00A884),
        onPressed: () {
          Navigator.of(context).pushNamed(AddChatScreen.routeName);
        },
        child: const Icon(Icons.message),
      ),
    );
  }
}
