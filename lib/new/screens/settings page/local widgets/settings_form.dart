import 'package:flutter/material.dart';
import 'package:softphone/new/screens/settings%20page/local%20widgets/settings_buttons.dart';
import 'package:softphone/new/sizing/config.dart';
import 'package:softphone/new/theme/theme_data.dart';

class SettingsForm extends StatefulWidget {
  const SettingsForm({
    super.key,
  });

  @override
  State<SettingsForm> createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            buildTextFormFields(),
            SettingsButtons(
                formKey: _formKey,
                emailController: _emailController,
                passwordController: _passwordController),
          ],
        ),
      ),
    );
  }

  Widget buildTextFormFields() {
    return Column(
      children: [
        TextFormField(
          cursorColor: Colors.red,
          controller: _emailController,
          decoration: InputDecoration(
            hintStyle: TextStyle(color: CustomTheme.primary),
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: CustomTheme.primary)),
            hintText: 'Email',),
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
        SizedBox(height: Config.screenHeight! * 0.01),
        TextFormField(
          controller: _passwordController,
          decoration: InputDecoration(
            hintStyle: TextStyle(color: CustomTheme.primary),
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: CustomTheme.primary)),
            hintText: 'Password',),
          obscureText: true,
          validator: (value) {
            if (value.toString().length < 6) {
              return 'Password should be longer or equal to 6 characters.';
            }
            return null;
          },
        ),
      ],
    );
  }
}