import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:softphone/new/controller/auth_controller.dart';
import 'package:softphone/new/screens/call%20history/call_history.dart';
import 'package:softphone/new/screens/contacts/contacts_page.dart';
import 'package:softphone/new/screens/dial%20page/dial_pad_page.dart';
import 'package:softphone/new/screens/home%20page/local%20widgets/home_page_buttons.dart';
import 'package:softphone/new/screens/home%20page/local%20widgets/home_page_title.dart';
import 'package:softphone/new/screens/messages/messages_page.dart';
import 'package:softphone/new/screens/settings%20page/settings.dart';
import 'package:softphone/new/screens/signUP/local%20widgets/app_bar_sign_up.dart';
import 'package:softphone/old/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pages = [
    // HomeScreen(),
    DialPadPage(),
    const CallHistory(),
    const MessagesPage(),
    const ContactsPage(),
    const SettingsPage()

  ];

  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Center(child: GetBuilder<AuthController>(
      builder: (_authController) {
        return Scaffold(
          appBar: const AppBarSignUp(),
          backgroundColor: AppColors.primary,
          body: Center(
            child: Column(
              children: [
                pages[index],
                // HomePageTitle(title: 'Welcome', subtitle: _authController.displayName),
                // const HomePageButtons(),
              ],
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: AppColors.primary,
            color: AppColors.secondary,
            animationDuration: const Duration(milliseconds: 250),
            onTap: (i){
              setState(() {
                index = i;
              });

            },
            items: const [
              NavBarItem(index: 0, icon: Icons.dialpad_outlined),
              NavBarItem(index: 1, icon: Icons.history),
              NavBarItem(index: 2, icon: Icons.message_outlined),
              NavBarItem(index: 3, icon: Icons.contacts_outlined),
              NavBarItem(index: 4, icon: Icons.settings),
              // Icon(
              //   Icons.dialpad_outlined,
              //   color: Colors.black,
              // ),
              // Icon(
              //   Icons.history,
              //   color: Colors.black,
              // ),
              // Icon(
              //   Icons.message_outlined,
              //   color: Colors.black,
              // ),
              // Icon(
              //   Icons.contacts_outlined,
              //   color: Colors.black,
              // ),
              // Icon(
              //   Icons.settings,
              //   color: Colors.black,
              // ),

            ],

          ),
        );
      }
    )
    );
  }
}
//
// class _bottomNavBar extends StatelessWidget {
//   const _bottomNavBar({
//     super.key,
//     required this.onItemSelected});
//
//   final ValueChanged<int> onItemSelected;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         top: false,
//         bottom: true,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             NavBarItem(
//               index: 0,
//               label: 'Dial Pad',
//               icon: Icons.dialpad_outlined,
//               onTap: onItemSelected,),
//             NavBarItem(
//               index: 1,
//               label: 'History',
//               icon: Icons.history,
//               onTap: onItemSelected,),
//             NavBarItem(
//               index: 2,
//               label: 'Messages',
//               icon: Icons.message_outlined,
//               onTap: onItemSelected,),
//             NavBarItem(
//               index: 3,
//               label: 'Contacts',
//               icon: Icons.contacts_outlined,
//               onTap: onItemSelected,),
//             NavBarItem(
//               index: 4,
//               label: 'Settings',
//               icon: Icons.settings,
//               onTap: onItemSelected,),
//           ],
//         ));
//   }
// }
//
class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.index,
    required this.icon,
    });

  final int index;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          const SizedBox(height: 4,),
        ],
      ),
    );
  }
}
