import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softphone/new/controller/auth_controller.dart';
import 'package:softphone/new/root.dart';
import 'package:softphone/new/screens/verfiy/verify_email.dart';
import '../../../sizing/config.dart';

class SignUpButtons extends StatelessWidget {
  const SignUpButtons({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  })  : _formKey = formKey,
        _nameController = nameController,
        _emailController = emailController,
        _passwordController = passwordController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _nameController;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    final _authController = Get.find<AuthController>();

    return Expanded(
      flex: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: Config.screenHeight! * 0.02),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                String name = _nameController.text.trim();
                String email = _emailController.text.trim();
                String password = _passwordController.text.trim();
                _authController.signUp(name, email, password);
                Get.off(const VerifyEmailScreen());
              }
            },
            child: const Text('Sign up'),
          ),
          TextButton(
            child: const Text('Already have an account?'),
            onPressed: () => Get.offAll(() => const Root(),
                transition: Transition.circularReveal,
                duration: const Duration(seconds: 2)),
          ),
        ],
      ),
    );
  }
}