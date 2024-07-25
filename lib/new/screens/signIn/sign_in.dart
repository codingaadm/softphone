import 'package:flutter/material.dart';
import 'local wigets/sign_in_form.dart';
import 'local wigets/sign_in_title.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SignInTitle(
              title: 'Login',
              subtitle: 'Please enter your email and password to login....'),
          SignInForm(),
        ],
      ),
    );
  }
}