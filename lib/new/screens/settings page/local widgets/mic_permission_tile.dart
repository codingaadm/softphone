import 'package:flutter/material.dart';
import 'package:softphone/new/theme/theme_data.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MicPermissionTile extends StatelessWidget {
  const MicPermissionTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.onTap});

  final IconData icon;
  final String title, subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: CustomTheme.secondary,),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: trailing,
      onTap: onTap,


    );
  }
}
