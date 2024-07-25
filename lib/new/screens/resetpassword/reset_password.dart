import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softphone/new/sizing/config.dart';
import 'package:softphone/new/screens/resetpassword/local%20widgets/reset_password_form.dart';
import 'package:softphone/new/screens/resetpassword/local%20widgets/reset_password_title.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.04),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Get.back(),
                  ),
                ),
                const ResetPasswordTitle(
                    title: 'Recovery', subtitle: 'Please enter you account email'),
                SizedBox(height: Config.screenHeight! * 0.05),
                const ResetPasswordForm(),
                SizedBox(height: Config.screenHeight! * 0.2),
              ],
            ),
          )),
    );
  }
}
