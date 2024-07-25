import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softphone/new/theme/change_theme_switch.dart';
import 'package:softphone/new/sizing/config.dart';
import 'package:softphone/new/controller/auth_controller.dart';
import 'package:softphone/new/screens/signIn/sign_in.dart';

import 'screens/home page/home_screen.dart';


class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    final ThemeController _controller = Get.put(ThemeController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Obx(
              () => Switch(value: _controller.currentTheme.value == ThemeMode.dark,
                onChanged: (value) {
                  _controller.switchTheme();
                  Get.changeThemeMode(_controller.currentTheme.value);
                },
              ),
        ),
      ),
      body: GetBuilder<AuthController>(
        builder: (_) {
          return SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Config.screenWidth! * 0.04),
                child: _.isSignedIn.value ? const HomeScreen() : const SignIn()),
          );
        },
      ),
    );
  }
}