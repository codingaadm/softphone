import 'package:flutter/material.dart';
import 'package:softphone/new/screens/settings%20page/functions/change%20email/local%20widgets/change_email_form.dart';
import 'package:softphone/new/screens/settings%20page/functions/change%20email/local%20widgets/change_email_title.dart';


class ChangeEmail extends StatefulWidget {
  const ChangeEmail({super.key});

  @override
  State<ChangeEmail> createState() => _ChangeEmailState();
}

class _ChangeEmailState extends State<ChangeEmail> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          ChangeEmailTitle(
              title: 'Enter you new email',
              subtitle: ''),
          // ChangeEmailForm(),
        ],
      ),
    );
  }
}