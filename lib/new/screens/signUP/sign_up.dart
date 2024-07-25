import 'package:flutter/material.dart';
import 'package:softphone/new/screens/signUP/local%20widgets/app_bar_sign_up.dart';
import '../../sizing/config.dart';
import 'local widgets/sign_up_buttons.dart';
import 'local widgets/sign_up_title.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: const AppBarSignUp(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.04),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SignUpTitle(title: 'Sign Up',
                  subtitle: 'Create an account...',
                ),
                buildTextFormFields(),
                SignUpButtons(
                    formKey: _formKey,
                    nameController: _nameController,
                    emailController: _emailController,
                    passwordController: _passwordController),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildTextFormFields() {
    return Expanded(
      flex: 8,
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: SizedBox(height: Config.screenHeight! * 0.08),
          ),
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(hintText: 'Name',),
            validator: (value) {
              if (value.toString().length <= 2) {
                return 'Enter valid name.';
              }
              return null;
            },
          ),
          SizedBox(height: Config.screenHeight! * 0.02),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration( hintText: 'Email'),
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
          SizedBox(height: Config.screenHeight! * 0.02),
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
            hintText: 'Password'),
            validator: (value) {
              if (value.toString().length < 6) {
                return 'Password should be longer or equal to 6 characters.';
              }
              return null;
            },
          ),
          SizedBox(height: Config.screenHeight! * 0.02),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
            hintText: 'Confirm Password'),
            validator: (value) {
              if (value?.trim() != _passwordController.text.trim()) {
                return 'Passwords does not match!';
              }

              return null;
            },
          ),
        ],
      ),
    );
  }
}

