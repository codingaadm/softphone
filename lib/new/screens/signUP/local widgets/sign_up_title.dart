import 'package:flutter/material.dart';
import 'package:softphone/new/theme/theme_data.dart';

class SignUpTitle extends StatelessWidget {
  const SignUpTitle({
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
            style: TextStyle(fontSize: 30,
                color: CustomTheme.textFaded,
                fontFamily: 'nunito'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Text(
            subtitle!,
            style: TextStyle(fontSize: 30,
                color: CustomTheme.textFaded,
                fontFamily: 'nunito'),
          ),
        ],
    );
  }
}
