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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pages = const [
    DialPadPage(),
    CallHistory(),
    MessagesPage(),
    ContactsPage(),
    SettingsPage()

  ];

  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Center(child: GetBuilder<AuthController>(
      builder: (_authController) {
        return Scaffold(
          body: Center(
            child: Column(
              children: [
                pages[index],
                HomePageTitle(title: 'Welcome', subtitle: _authController.displayName),
                const HomePageButtons(),
              ],
            ),
          ),
          bottomNavigationBar: _bottomNavBar(
            onItemSelected: (i){
              setState(() {
                index = i;
              });
            },
          ),
        );
      }
    )
    );
  }
}

class _bottomNavBar extends StatelessWidget {
  const _bottomNavBar({
    super.key,
    required this.onItemSelected});

  final ValueChanged<int> onItemSelected;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavBarItem(
              index: 0,
              label: 'Dial Pad',
              icon: Icons.dialpad_outlined,
              onTap: onItemSelected,),
            NavBarItem(
              index: 1,
              label: 'History',
              icon: Icons.history,
              onTap: onItemSelected,),
            NavBarItem(
              index: 2,
              label: 'Messages',
              icon: Icons.message_outlined,
              onTap: onItemSelected,),
            NavBarItem(
              index: 3,
              label: 'Contacts',
              icon: Icons.contacts_outlined,
              onTap: onItemSelected,),
            NavBarItem(
              index: 4,
              label: 'Settings',
              icon: Icons.settings,
              onTap: onItemSelected,),
          ],
        ));
  }
}

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.index,
    required this.label,
    required this.icon,
    required this.onTap});

  final int index;
  final String label;
  final IconData icon;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          SizedBox(height: 4,),
          Text(label),
          SizedBox(height: 8,)
        ],
      ),
    );
  }
}
