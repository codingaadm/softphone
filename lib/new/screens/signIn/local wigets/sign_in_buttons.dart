import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softphone/new/sizing/config.dart';
import 'package:softphone/new/controller/auth_controller.dart';
import 'package:softphone/new/screens/resetpassword/reset_password.dart';
import 'package:softphone/new/screens/signUP/sign_up.dart';
import 'package:softphone/new/theme/theme_data.dart';

class SignInButtons extends StatelessWidget {
  const SignInButtons({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  })
      : _formKey = formKey,
        _emailController = emailController,
        _passwordController = passwordController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    final _authController = Get.find<AuthController>();

    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Padding(
            padding:
            EdgeInsets.symmetric(vertical: Config.screenHeight! * 0.005),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => Get.to(() => const ResetPassword(),
                    transition: Transition.circularReveal,
                    duration: const Duration(seconds: 2)),
                style: ButtonStyle(
                  // backgroundColor: WidgetStateColor.resolveWith((callback) => CustomTheme.primary),
                  overlayColor: WidgetStateColor.resolveWith(
                          (states) => Colors.transparent),
                ),
                child: Text('Forgot Password?',style: TextStyle(color: CustomTheme.secondary),
              ),
            ),
          ),
          ),
          ElevatedButton(
            style: ButtonStyle(backgroundColor: WidgetStateColor.resolveWith((callback) => CustomTheme.primary)),
            child: Text ('Sign in', style: TextStyle(color: CustomTheme.secondary),),
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                String email = _emailController.text.trim();
                String password = _passwordController.text;
                _authController.signIn(email,password);
              }
              else {
                return;
              }
            },
          ),
          SizedBox(height: Config.screenHeight! * 0.01),
          TextButton(
            child: Text('Don\'t have an account?',style: TextStyle(color: CustomTheme.secondary),),
            onPressed: () => Get.to(() => const SignUp(),
                transition: Transition.circularReveal,
                duration: const Duration(seconds: 2)),
          ),
        ],
      ),
    );
  }
}