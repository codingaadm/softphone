import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softphone/new/screens/contacts/add%20contacts/add_contact.dart';
import 'package:softphone/new/screens/contacts/contacts_page.dart';
import 'package:softphone/new/screens/dial%20page/dial_pad_page.dart';
import 'package:softphone/new/sizing/config.dart';
import 'package:softphone/new/theme/theme_data.dart';

class HomePageButtons extends StatelessWidget {
  const HomePageButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_forward_outlined),
            style: ButtonStyle(
                backgroundColor: WidgetStateColor.resolveWith((callback) => CustomTheme.primary),
                foregroundColor: WidgetStateColor.resolveWith((callback) => CustomTheme.secondary)),

              onPressed: () => Get.to(() => const ContactsPage(),
            transition: Transition.rightToLeft,)
              ),
          SizedBox(height: Config.screenHeight! * 0.01),
        ],
      ),
    );
  }
}