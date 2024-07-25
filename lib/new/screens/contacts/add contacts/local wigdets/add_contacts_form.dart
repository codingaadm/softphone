import 'package:flutter/material.dart';
import 'package:softphone/new/screens/contacts/add%20contacts/local%20wigdets/save_contact.dart';
import 'package:softphone/new/sizing/config.dart';
import 'package:softphone/new/theme/theme_data.dart';


class AddContactsForm extends StatefulWidget {
  const AddContactsForm({
  super.key,
  });
  @override
  State<AddContactsForm> createState() => _AddContactsFormState();
}

class _AddContactsFormState extends State<AddContactsForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            buildTextFormFields(),
            SaveContact(
                formKey: _formKey,
                emailController: _emailController,
                nameController: _nameController,
                numberController: _numberController),
          ],
        ),
      ),
    );
  }

  Widget buildTextFormFields() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Config.screenWidth! * 0.04),
        child: Column(
          children: [
            TextFormField(
              cursorColor: Colors.red,
              controller: _nameController,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: CustomTheme.primary),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: CustomTheme.primary)),
                hintText: 'Please enter name',),
              validator: (value) {
                if (value.toString().length < 2){
                  return 'Name should be longer than 2 letters';
                }
                return null;
              },
            ),
            SizedBox(height: Config.screenHeight! * 0.01),
            TextFormField(
              controller: _numberController,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: CustomTheme.primary),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: CustomTheme.primary)),
                hintText: 'Please enter phone number',),
              obscureText: true,
              validator: (value) {
                if (value.toString().length < 10 || value.toString().length > 11) {
                  return 'Please make sure number is correct';
                }
                return null;
              },
            ),
            SizedBox(height: Config.screenHeight! * 0.01),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: CustomTheme.primary),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: CustomTheme.primary)),
                hintText: 'Please enter email (optional)',),
              validator: (value) {
                bool _isEmailValid = RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value!);
                  if (!_isEmailValid) {
                      return 'Invalid email.';
                  }
                    return null;
                  },
            ),
          ],
        ),
      ),
    );
  }
}