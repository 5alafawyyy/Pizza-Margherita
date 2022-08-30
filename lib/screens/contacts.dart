import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contacts'),
      ),
      body: SizedBox(
        height: sizeY,
        width: sizeX,
        child: ListView(
          children: showContacts(),
        ),
      ),
    );
  }

  List<ListTile> showContacts() {
    List<Contacts> contacts = [];

    for (int i = 0; i < 20; i++) {
      contacts.addAll(contactsInfo);
    }

    List<ListTile> list = [];
    contacts.forEach((element) {
      list.add(
        ListTile(
          title: Text(
            element.title,
          ),
          subtitle: Text(
            element.subTitle,
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.orange,
            child: Icon(
              element.icon,
            ),
          ),
          trailing: const Icon(
            Icons.keyboard_arrow_right,
          ),
          onTap: () {},
        ),
      );
    });

    return list;
  }
}

List<Contacts> contactsInfo = [
  Contacts(
    icon: Icons.sentiment_dissatisfied,
    title: 'Thomas Anderson',
    subTitle: 'The Matrix',
  ),
  Contacts(
    icon: Icons.sentiment_dissatisfied,
    title: 'Frank Slade',
    subTitle: 'Scent of a Woman',
  ),
  Contacts(
    icon: Icons.sentiment_dissatisfied,
    title: 'Mildred Hayes',
    subTitle: 'Three Bilboards Outside Ebbing',
  ),
  Contacts(
    icon: Icons.sentiment_dissatisfied,
    title: 'Bruce Eayne',
    subTitle: 'The Dark Night',
  ),
  Contacts(
    icon: Icons.sentiment_dissatisfied,
    title: 'Jamil Malik',
    subTitle: 'The Millionaire',
  ),
];

class Contacts {
  final IconData icon;
  final String title;
  final String subTitle;

  Contacts({
    required this.icon,
    required this.title,
    required this.subTitle,
  });
}
