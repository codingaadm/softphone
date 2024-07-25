import 'package:flutter/material.dart';
import 'package:softphone/old/theme.dart';

class ResetPasswordTitle extends StatelessWidget {
  const ResetPasswordTitle({
    super.key,
    required this.title,
    required this.subtitle});

  final String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title!,
            style: const TextStyle(fontSize: 30,
                color: AppColors.textFaded,
                fontFamily: 'nunito'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          Text(
            subtitle!,
            style: const TextStyle(fontSize: 30,
                color: AppColors.textFaded,
                fontFamily: 'nunito'),
          ),
        ],
      ),
    );
  }
}
