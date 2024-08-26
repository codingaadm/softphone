import 'package:flutter/material.dart';
import 'package:softphone/new/theme/theme_data.dart';

class CallHistoryTile extends StatelessWidget {
  const CallHistoryTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.onTap});

  final String title, subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: trailing,
      onTap: onTap,


    );
  }
}
