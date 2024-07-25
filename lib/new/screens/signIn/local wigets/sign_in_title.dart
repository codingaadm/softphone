import 'package:flutter/material.dart';
import 'package:softphone/new/theme/theme_data.dart';

class SignInTitle extends StatelessWidget {
  const SignInTitle({
    super.key,
    required this.title,
    required this.subtitle});

  final String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Text(
            title!,
            style:  TextStyle(fontSize: 30,
                color: CustomTheme.secondary,
                fontFamily: 'nunito'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Text(
            subtitle!,
            style: TextStyle(fontSize: 16,
                color: CustomTheme.secondary,
                fontFamily: 'nunito'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),

        ],
    );
  }
}
