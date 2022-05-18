import 'package:flutter/material.dart';

class Chat {
  final String title;
  final String date;
  final String imageUrl;
  final String lastMessage;
  final Color color;
  final int unreadMessage;

  Chat({
    required this.title,
    required this.date,
    required this.imageUrl,
    required this.lastMessage,
    required this.color,
    this.unreadMessage = 0,
  });
}

final dummyChats = [
  Chat(
    title: 'Albert Dera',
    date: 'Yesterday',
    imageUrl: 'photo1.jpg',
    lastMessage: 'Hello there',
    color: Colors.black,
    unreadMessage: 1,
  ),
  Chat(
    title: 'Sekandar Hayat',
    date: '4/22/22',
    imageUrl: 'photo8.jpg',
    lastMessage: 'Will you be free on the weekend?',
    color: Colors.black,
    unreadMessage: 3,
  ),
  Chat(
    title: 'Harps Joseph',
    date: '10:29',
    imageUrl: 'photo4.jpg',
    lastMessage: '📞Missed a video call',
    color: Colors.black,
  ),
  Chat(
    title: 'Joseph Gonzales',
    date: '8/28/22',
    imageUrl: 'photo6.jpg',
    lastMessage: 'typing...',
    color: Colors.green,
  ),
  Chat(
    title: 'Ian Dooley',
    date: '2:00',
    imageUrl: 'photo5.jpg',
    lastMessage: 'thanks!',
    color: Colors.black,
    unreadMessage: 2,
  ),
  Chat(
    title: 'Seth Doyle',
    date: '3/30/21',
    imageUrl: 'photo7.jpg',
    lastMessage: 'Hello there',
    color: Colors.black,
  ),
  Chat(
    title: 'Ayo Ogunseinde',
    date: '3/15/22',
    imageUrl: 'photo2.jpg',
    lastMessage: 'Hello there',
    color: Colors.black,
  ),
  Chat(
    title: 'Foto Sushi',
    date: '3/15/22',
    imageUrl: 'photo3.jpg',
    lastMessage: 'Hello there',
    color: Colors.black,
  ),
  Chat(
    title: 'Warren Wong',
    date: '3/15/22',
    imageUrl: 'photo9.jpg',
    lastMessage: 'Hello there',
    color: Colors.black,
  ),
];
