import 'package:flutter/material.dart';
import 'package:softphone/new/screens/contacts/add%20contacts/local%20wigdets/add_contact_app_bar.dart';
import 'package:softphone/new/screens/contacts/add%20contacts/local%20wigdets/add_contact_title.dart';

import '../local widgets/add_contact_button.dart';
import 'local wigdets/add_contacts_form.dart';

class AddContact extends StatefulWidget {
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: AddContactAppBar(),
      body: Column(
        children: [
          AddContactTitle(title: 'Add Contact', subtitle: ' '),
          AddContactsForm(),
          AddContactButton(),

        ],
      ),
    );
  }
}
