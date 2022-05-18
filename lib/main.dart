import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chat_screen/add_chat_screen.dart';
import 'package:whatsapp/screens/profile_screen.dart';
import 'package:whatsapp/screens/settings_screen.dart';

import 'screens/chat_screen/chat_detail_screen.dart';
import 'screens/chat_screen/chat_info_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff008069),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        ChatDetailScreen.routeName: (context) => const ChatDetailScreen(),
        ChatInfoScreen.routeName: (context) => const ChatInfoScreen(),
        SettingsScreen.routeName: (context) => const SettingsScreen(),
        ProfileScreen.routeName: (context) => const ProfileScreen(),
        AddChatScreen.routeName: (context) => AddChatScreen(),
      },
    ),
  );
}
