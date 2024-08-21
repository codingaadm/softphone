import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softphone/new/screens/settings%20page/functions/change%20email/change_email.dart';
import 'package:softphone/new/screens/settings%20page/functions/change_name.dart';
import 'package:softphone/new/screens/settings%20page/functions/change_pbx.dart';
import 'package:softphone/new/screens/settings%20page/functions/version_page.dart';
import 'package:softphone/new/screens/settings%20page/local%20widgets/settings_app_bar.dart';
import 'package:softphone/new/screens/settings%20page/local%20widgets/settings_page_tile.dart';
import 'package:softphone/new/screens/settings%20page/local%20widgets/settings_title.dart';

import 'functions/change_pbx_login.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            const SettingsTitle(title: 'Settings Page', subtitle: 'Make changes here'),
            SettingsPageTile(
                icon: Icons.house_outlined,
                title: 'Email Address',
                subtitle: 'Change email',
                onTap:
                      () => Get.to(() => const ChangeEmail())),
            SettingsPageTile(
                icon: Icons.shopping_bag_outlined,
                title: 'Name',
                subtitle: 'Change Name',
                onTap:
                    () => Get.to(() => const ChangeName())),
            SettingsPageTile(
                icon: Icons.comment_bank,
                title: 'PBX DNS',
                subtitle: 'Change DNS',
                onTap:
                () => Get.to(() => const ChangePbx())),
            SettingsPageTile(
                icon: Icons.comment_bank,
                title: 'PBX Account Login',
                subtitle: 'Change PBX Login',
                onTap:
                    () => Get.to(() => const ChangePbxLogin())),
            SettingsPageTile(
              icon: Icons.house_outlined,
              title: 'Version Page',
              subtitle: 'Current Version',
              onTap: () => Get.to(() => const VersionPage())),
          ],
        ),
    );
  }
}
