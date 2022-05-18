import 'package:flutter/material.dart';

Widget buildMyStatusWidget() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SizedBox(
        width: 70,
        child: Stack(
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/photo.jpg'),
            ),
            Positioned(
              bottom: 0,
              right: 5,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(16)),
                child: const CircleAvatar(
                  radius: 12,
                  backgroundColor: Color(0xff00A884),
                  child: Icon(Icons.add, color: Colors.white, size: 20),
                ),
              ),
            ),
          ],
        ),
      ),
      title: const Text(
        'My status',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      subtitle: const Text('Tap to add status update',
          style: TextStyle(fontSize: 16)),
    );
  }