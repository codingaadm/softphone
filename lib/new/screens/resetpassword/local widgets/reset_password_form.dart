


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softphone/new/controller/auth_controller.dart';
import '../../../sizing/config.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController _emailController = TextEditingController();

    final _authController = Get.find<AuthController>();

    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
            hintText: 'Email'),
            controller: _emailController,
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
          SizedBox(height: Config.screenHeight! * 0.03),
          ElevatedButton(
            child: const Text('Reset Password'),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _authController.resetPassword(_emailController.text.trim());
              }
            },
          ),
        ],
      ),
    );
  }
}