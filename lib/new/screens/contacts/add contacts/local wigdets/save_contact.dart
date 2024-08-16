import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:softphone/new/screens/signIn/sign_in.dart';
import 'package:softphone/new/sizing/config.dart';
import 'package:softphone/new/theme/theme_data.dart';

class SaveContact extends StatefulWidget {
   SaveContact({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController nameController,
    required TextEditingController numberController,
     DatabaseReference? ref
  })
      : _formKey = formKey,
        _emailController = emailController,
        _nameController = nameController,
        _numberController = numberController;
        DatabaseReference? _ref;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _nameController;
  final TextEditingController _numberController;

  @override
  State<SaveContact> createState() => SaveContactState();

}

class SaveContactState extends State<SaveContact> {
  late DatabaseReference _ref;
  @override
  void initState() {
    super.initState();
    _ref = FirebaseDatabase.instance.ref().child('Contacts');
  }
    @override
    Widget build(BuildContext context) {

      return Expanded(
        flex: 1,
        child: Column(
          children: [
            Padding(
              padding:
              EdgeInsets.symmetric(vertical: Config.screenHeight! * 0.005, horizontal: Config.screenWidth! * 0.04),
              child: Align(
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        saveContact();
                      },
                      style: ButtonStyle(
                        // backgroundColor: WidgetStateColor.resolveWith((callback) => CustomTheme.primary),
                        overlayColor: WidgetStateColor.resolveWith(
                                (states) => Colors.transparent),
                      ),
                      child: Text('Save Contact',
                        style: TextStyle(color: CustomTheme.secondary),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => Get.offAll(const SignIn()),
                      style: ButtonStyle(
                        // backgroundColor: WidgetStateColor.resolveWith((callback) => CustomTheme.primary),
                        overlayColor: WidgetStateColor.resolveWith(
                                (states) => Colors.transparent),
                      ),
                      child: Text('Logout',
                        style: TextStyle(color: CustomTheme.secondary),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
      }

  void saveContact() {
    String name = widget._nameController.text;
    String number = widget._numberController.text;

    Map<String, String> contact = {
      'name': name,
      'number': number
    };
    _ref.push().set(contact);
  }
}