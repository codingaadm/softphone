import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:softphone/new/screens/settings%20page/functions/change%20email/change_email.dart';
import 'package:softphone/new/screens/settings%20page/functions/change_name.dart';
import 'package:softphone/new/screens/settings%20page/functions/change_pbx.dart';
import 'package:softphone/new/screens/settings%20page/functions/version_page.dart';
import 'package:softphone/new/screens/settings%20page/local%20widgets/phone_permission_tile.dart';
import 'package:softphone/new/screens/settings%20page/local%20widgets/settings_app_bar.dart';
import 'package:softphone/new/screens/settings%20page/local%20widgets/settings_page_tile.dart';
import 'package:softphone/new/screens/settings%20page/local%20widgets/settings_title.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'functions/change_pbx_login.dart';
import 'local widgets/mic_permission_tile.dart';


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
            MicPermissionTile(
                icon: Icons.mic,
                title: 'Microphone Permission',
                subtitle: 'Please press to give microphone permission',
                onTap: (){
                  requestMicPermission();
                },
            ),
            PhonePermissionTile(
                icon: Icons.phonelink_lock,
                title: 'Phone Permission',
                subtitle: 'Please press to give phone permission',
              onTap: (){
                  requestPhonePermission();
              }),
          ],

        ),
    );
  }
}
void requestMicPermission() async {
  var status = await Permission.microphone.status;
  if (status.isGranted){
    showToastMessage('Permission was Granted');
  }else if (status.isDenied){
    if(await Permission.microphone.request().isGranted){}
    showToastMessage('Permission Granted');
  } else {
    showToastMessage('Permission Denied');
  }
}
void showToastMessage(String message) => Fluttertoast.showToast(msg: message);

void requestPhonePermission() async {
  var status = await Permission.phone.status;
  if (status.isGranted){
    showToastMessage('Permission was Granted');
  }else if (status.isDenied){
    if(await Permission.microphone.request().isGranted){}
    showToastMessage('Permission Granted');
  } else {
    showToastMessage('Permission Denied');
  }
}
