import 'package:flutter/material.dart';
import 'package:whatsapp/constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          Center(
            child: Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Hero(
                    tag: 'profile_picture',
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/photo.jpg'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: CircleAvatar(
                    backgroundColor: greenColor,
                    radius: 26,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person, color: buttonGreyColor),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Name',
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
                Text('Mohammad Af',
                    style: TextStyle(fontWeight: FontWeight.w400)),
                SizedBox(height: 10),
              ],
            ),
            subtitle: const Text(
                'This is not your username or pin. This name will be visible to your contacts.'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit, color: greenColor),
            ),
          ),
          //! Divider
          const Divider(),
          //! Divider
          ListTile(
            leading: const Icon(Icons.info_outline, color: buttonGreyColor),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('About',
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
                SizedBox(height: 4),
                Text('Nice to meet ya!',
                    style: TextStyle(fontWeight: FontWeight.w400)),
                SizedBox(height: 10),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit, color: greenColor),
            ),
          ),
          //! Divider
          const Divider(),
          //! Divider
          ListTile(
            leading: const Icon(Icons.phone, color: buttonGreyColor),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Phone',
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
                SizedBox(height: 4),
                Text('+23 343 2299 332',
                    style: TextStyle(fontWeight: FontWeight.w400)),
                SizedBox(height: 10),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit, color: greenColor),
            ),
          ),
        ],
      ),
    );
  }
}
