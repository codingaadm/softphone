

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softphone/new/sizing/config.dart';
import 'package:softphone/new/theme/change_theme_switch.dart';

class VerifyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const VerifyAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow = false});

  final  Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    final ThemeController _controller = Get.put(ThemeController());
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.1),
        child: AppBar(
            automaticallyImplyLeading: false,
            leading: showBackArrow ? IconButton(
                onPressed: () => Get.back(), icon: Icon(Icons.arrow_left)) :
            leadingIcon != null? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
            title: Obx(
                  () => Switch(value: _controller.currentTheme.value == ThemeMode.dark,
                onChanged: (value) {
                  _controller.switchTheme();
                  Get.changeThemeMode(_controller.currentTheme.value);
                },
              ),
            )
        )
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
