import 'dart:developer';

import 'package:flutter/material.dart';

//! My own classess
import 'screens.dart';
import 'package:whatsapp/widgets/widgets.dart';
import 'package:whatsapp/delegates/my_search_delegate.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Route get route => MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: MySearchDelegate());
              },
              icon: const Icon(Icons.search),
            ),
            PopupMenuButton<String>(
              onSelected: (option) {
                log('$option was selected.');
                Navigator.of(context).pushNamed(SettingsScreen.routeName);
              },
              onCanceled: () {
                log('No item was selected.');
                Navigator.of(context).pushNamed(SettingsScreen.routeName);
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Text('New group'),
                  value: 'new group',
                ),
                const PopupMenuItem(
                  child: Text('New broadcast'),
                  value: 'new broadcast',
                ),
                const PopupMenuItem(
                  child: Text('Linked devices'),
                  value: 'linked devices',
                ),
                const PopupMenuItem(
                  child: Text('Starred messages'),
                  value: 'starred messages',
                ),
                PopupMenuItem(
                  enabled: true,
                  value: 'settings',
                  onTap: () {
                    // Navigator.of(context).pushNamed(SettingsScreen.routeName);
                  },
                  child: const Text('Settings'),
                ),
              ],
            )
          ],
          bottom: TabBar(
            physics: const NeverScrollableScrollPhysics(),
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: [
              const Tab(
                child: Icon(Icons.camera_alt, size: 25, color: Colors.white70),
              ),
              buildTab('CHATS', 3),
              buildTab('STATUS', 0),
              buildTab('CALLS', 0),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildPage('CAMERA'),
            const ChatsScreen(),
            const StatusScreen(),
            const CallScreen(),
          ],
        ),
      ),
    );
  }

  buildPage(String text) => Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 50),
        ),
      );
}
