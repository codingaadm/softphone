import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softphone/new/screens/signIn/sign_in.dart';
import 'package:softphone/new/sizing/config.dart';
import 'package:softphone/new/controller/auth_controller.dart';
import 'package:softphone/new/screens/resetpassword/reset_password.dart';
import 'package:softphone/new/theme/theme_data.dart';

class ChangeEmailButton extends StatelessWidget {
  const ChangeEmailButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
  })
      : _formKey = formKey,
        _emailController = emailController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    final _authController = Get.find<AuthController>();

    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Padding(
            padding:
            EdgeInsets.symmetric(vertical: Config.screenHeight! * 0.005,),
            child: const Align(
              alignment: Alignment.centerRight,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(backgroundColor: WidgetStateColor.resolveWith((callback) => CustomTheme.primary)),
            child: Text ('Update Email', style: TextStyle(color: CustomTheme.secondary),),
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                String email = _emailController.text.trim();
                _authController.update(email as List<Object>?);
              }
              else {
                return;
              }
            },
          ),
        ],
      ),
    );
  }
}