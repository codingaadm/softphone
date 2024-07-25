import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softphone/new/screens/contacts/add%20contacts/add_contact.dart';
import 'package:softphone/new/screens/dial%20page/dial_pad_page.dart';
import 'package:softphone/new/sizing/config.dart';
import 'package:softphone/new/theme/theme_data.dart';

class AddContactButton extends StatelessWidget {
  const AddContactButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          alignment: Alignment.center,
            icon: const Icon(Icons.add_box_outlined),
            style: ButtonStyle(
                backgroundColor: WidgetStateColor.resolveWith((callback) => CustomTheme.primary),
                foregroundColor: WidgetStateColor.resolveWith((callback) => CustomTheme.secondary)),

            onPressed: () => Get.off(() => const AddContact(),
              transition: Transition.rightToLeft,)
        ),
      ],
    );
  }
}