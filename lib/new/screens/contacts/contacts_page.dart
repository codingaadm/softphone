import 'package:flutter/material.dart';
import 'package:softphone/new/screens/contacts/local%20widgets/contact_tile.dart';

import 'local widgets/contact_app_bar.dart';
import 'local widgets/contact_title.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Expanded(
        flex: 1,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ContactTitle(title: 'Contacts'),
              ContactTile (title: "Person name", subtitle: "Persons Number"),
              ContactTile (title: "Person name", subtitle: "Persons Number"),
              ContactTile (title: "Person name", subtitle: "Persons Number"),
              ContactTile (title: "Person name", subtitle: "Persons Number"),
              ContactTile (title: "Person name", subtitle: "Persons Number"),
              ContactTile (title: "Person name", subtitle: "Persons Number"),
              ContactTile (title: "Person name", subtitle: "Persons Number"),
              ContactTile (title: "Person name", subtitle: "Persons Number"),
              ContactTile (title: "Person name", subtitle: "Persons Number"),
              ContactTile (title: "Person name", subtitle: "Persons Number"),
              ContactTile (title: "Person name", subtitle: "Persons Number"),
              ContactTile (title: "Person name", subtitle: "Persons Number"),
              ContactTile (title: "Person name", subtitle: "Persons Number"),
              ContactTile (title: "Person name", subtitle: "Persons Number"),
              ContactTile (title: "Person name", subtitle: "Persons Number"),
              ContactTile (title: "Person name", subtitle: "Persons Number"),



            ],
          ),
        ),
    );
  }
}
