
import 'package:flutter/material.dart';
import 'package:whatsapp/constants/colors.dart';
import 'package:whatsapp/delegates/add_contacts_search_delegate.dart';

import 'package:whatsapp/models/contact.dart';

class AddChatScreen extends StatelessWidget {
  static const routeName = '/add_chat';

  AddChatScreen({Key? key}) : super(key: key);

  final contacts = dummyContacts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Select contact'),
            const SizedBox(height: 5),
            Text(
              '${contacts.length} contacts',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: AddContactSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: contacts.length + 4,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const ListTile(
                contentPadding: EdgeInsets.only(top: 15, left: 15),
                leading: CircleAvatar(
                  backgroundColor: brightGreenColor,
                  radius: 22,
                  child: Icon(Icons.group, color: Colors.white),
                ),
                title: Text(
                  'New group',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              );
            } else if (index == 1) {
              return Row(
                children: [
                  const Expanded(
                    flex: 5,
                    child: ListTile(
                      contentPadding: EdgeInsets.only(top: 15, left: 15, bottom: 5),
                      leading: CircleAvatar(
                        backgroundColor: brightGreenColor,
                        radius: 22,
                        child: Icon(Icons.person_add, color: Colors.white),
                      ),
                      title: Text(
                        'New contact',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.qr_code,
                        color: Color(0xff8696A0),
                        size: 25,
                      ),
                    ),
                  ),
                ],
              );
            } else if (index == contacts.length + 2) {
              return ListTile(
                contentPadding: const EdgeInsets.only(left: 25),
                leading:
                    const Icon(Icons.share, size: 25, color: Color(0xff8696A0)),
                title: const Text(
                  'Invite friends',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {},
              );
            } else if (index == contacts.length + 3) {
              return const ListTile(
                contentPadding: EdgeInsets.only(
                  left: 25,
                ),
                leading: Icon(Icons.help, size: 25, color: Color(0xff8696A0)),
                title: Text(
                  'Contacts help',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }

            final contact = contacts[index - 2];

            return ListTile(
              leading: CircleAvatar(
                radius: 22,
                backgroundImage:
                    AssetImage('assets/images/${contact.imageUrl}'),
              ),
              title: Text(contact.name,
                  style: const TextStyle(fontWeight: FontWeight.w700)),
              subtitle: Text(contact.bio),
            );
          }),
    );
  }

  Widget buildAddNewChatButton({
    required String title,
    required IconData icon,
  }) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: brightGreenColor,
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(width: 20),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}


