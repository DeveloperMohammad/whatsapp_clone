import 'package:flutter/material.dart';
import 'package:whatsapp/constants/colors.dart';
import 'package:whatsapp/screens/profile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(ProfileScreen.routeName);
              },
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              leading: const Hero(
                tag: 'profile_picture',
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/photo.jpg'),
                ),
              ),
              title: const Text('Mohammad Af'),
              subtitle: const Text('Nice to meet ya!'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.qr_code, color: brightGreenColor),
              ),
            ),
            const Divider(),
            const SizedBox(height: 10),
            buildSettingsItemWidget(
              label: 'Account',
              subtitle: 'Privacy, security, change number',
              icon: const RotatedBox(
                quarterTurns: 45,
                child: Icon(Icons.key, color: buttonGreyColor),
              ),
              onPressed: () {},
            ),
            buildSettingsItemWidget(
              label: 'Chats',
              subtitle: 'Theme, wallpapers, chat history',
              icon: const Icon(Icons.chat, color: buttonGreyColor),
              onPressed: () {},
            ),
            buildSettingsItemWidget(
              label: 'Notifications',
              subtitle: 'Message, group and call tones',
              icon: const Icon(Icons.notifications, color: buttonGreyColor),
              onPressed: () {},
            ),
            buildSettingsItemWidget(
              label: 'Storage and data',
              subtitle: 'Network usage, auto download',
              icon: const Icon(Icons.data_saver_off, color: buttonGreyColor),
              onPressed: () {},
            ),
            buildSettingsItemWidget(
              label: 'Help',
              subtitle: 'Help center, contact us, privacy policy',
              icon: const Icon(Icons.help_outline, color: buttonGreyColor),
              onPressed: () {},
            ),
            buildSettingsItemWidget(
              label: 'Invite a friend',
              icon: const Icon(Icons.group, color: buttonGreyColor),
              onPressed: () {},
            ),
            const SizedBox(height: 30),
            Column(
              children: const [
                Text(
                  'from',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blueGrey,
                  ),
                ),
                Text(
                  'Meta',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  buildSettingsItemWidget({
    required String label,
    String? subtitle,
    required VoidCallback onPressed,
    required Widget icon,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: GestureDetector(
        onTap: onPressed,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: icon,
            ),
            const SizedBox(width: 20),
            subtitle == null
                ? Text(
                    label,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 5),
                      FittedBox(
                        child: Text(
                          subtitle,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
          ],
        ),
      ),
    );
  }
  //! ........................
  //! This is the last bracket
  //! ........................
}