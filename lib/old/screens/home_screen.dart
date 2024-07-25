// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:provider/provider.dart';
// import 'package:softphone/helpers.dart';
// import 'package:softphone/pages/pages.dart';
// import 'package:softphone/screens/screens.dart';
// import 'package:softphone/services/auth.dart';
// import 'package:softphone/widgets/widgets.dart';
// import 'package:softphone/theme.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//
//   final ValueNotifier<int> pageIndex = ValueNotifier(0);
//
//   final ValueNotifier<String> title = ValueNotifier('Dial Pad');
//
//
//
//   final pages = const [
//     DialPadPage(),
//     HistoryPage(),
//     MessagesPage(),
//     ContactsPage(),
//     SettingsPage(),
//     VersionPage()
//   ];
//
//   final pageTitles = const [
//     'Dial Pad',
//     'History',
//     'Messages',
//     'Contacts',
//   ];
//
//   void _onNavItemSelected(index) {
//     title.value = pageTitles[index];
//     pageIndex.value = index;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final auth = Provider.of<Auth>(context);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.primary,
//         centerTitle: true,
//         title: ValueListenableBuilder(
//           valueListenable: title,
//           builder: (BuildContext context, String value, _) {
//             return Text(
//                 value,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ));
//           },
//         ),
//         leading: Align(
//           alignment: Alignment.centerRight,
//           child: Avatar.small(url: Helpers.randomPictureUrl()),
//         ),
//         actions: [
//           const ChangeThemeButton(),
//           PopupMenuButton<int>(
//           icon: const Icon(Icons.menu),
//           color: Colors.white,
//           itemBuilder: (context) => [
//             const PopupMenuItem<int>(value: 0, child: Text(
//               "Settings",
//               style:
//               TextStyle(color: Colors.black),
//             ),),
//             const PopupMenuItem<int>(value: 1, child: Text(
//               "Version",
//               style: TextStyle(
//                 color: Colors.black
//               ),
//             )),
//             const PopupMenuDivider(),
//
//             const PopupMenuItem<int>(value: 2, child: Row(
//               children: [
//                 Icon(Icons.logout, color: Colors.black,),
//                 SizedBox(width: 7,),
//                 Text(
//                   "Log Out",
//                   style: TextStyle(
//                       color: Colors.black
//                   ),
//                 ),
//               ],
//             )),
//                   ],onSelected: (item) => _selectedItem(context, item),),
//
//         ],
//       ),
//       body: ValueListenableBuilder(valueListenable: pageIndex,
//         builder: (BuildContext context, int value, _) {
//           return pages[value];
//         },
//       ),
//       bottomNavigationBar: _BottomNavBar(
//         onItemSelected: _onNavItemSelected,
//       ),
//     );
//   }
// }
// class _BottomNavBar extends StatefulWidget {
//   const _BottomNavBar({
//     required this.onItemSelected,});
//
//   final ValueChanged<int> onItemSelected;
//
//   @override
//   State<_BottomNavBar> createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<_BottomNavBar> {
//
//
//   var selectedIndex = 0;
//
//   void handleItemSelected(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//     widget.onItemSelected(index);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: AppColors.primary,
//       child: Padding(
//         padding: const EdgeInsets.only(top: 8.0),
//         child: SafeArea(
//             top: false,
//             bottom: false,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 _NavBarItem(
//                   index: 0,
//                   label: 'Dial Pad',
//                   icon : CupertinoIcons.phone_solid,
//                   isSelected: (selectedIndex == 0),
//                   onTap: handleItemSelected,
//
//
//                 ),
//                 _NavBarItem(
//                   index: 1,
//                   label: 'History',
//                   icon : CupertinoIcons.arrow_counterclockwise,
//                   isSelected: (selectedIndex == 1),
//                   onTap: handleItemSelected,
//                 ),
//                 // Padding(
//                 //   padding: const EdgeInsets.symmetric(horizontal: .0),
//                 //   child: GlowingActionButton(
//                 //       color: AppColors.secondary,
//                 //       icon: CupertinoIcons.add,
//                 //       onPressed: (){
//                 //         //TODO add message
//                 //       }),
//                 // ),
//                 _NavBarItem(
//                   index: 2,
//                   label: 'Messages',
//                   icon : CupertinoIcons.bubble_left_bubble_right_fill,
//                   isSelected: (selectedIndex == 2),
//                   onTap: handleItemSelected,
//                 ),
//                 _NavBarItem(
//                   index: 3,
//                   label: 'Contacts',
//                   icon : CupertinoIcons.person_2_square_stack_fill,
//                   isSelected: (selectedIndex == 3),
//                   onTap: handleItemSelected,
//                 ),
//             ],
//           )
//         ),
//       ),
//     );
//   }
// }
// class _NavBarItem extends StatelessWidget {
//   const _NavBarItem({
//     required this.index,
//     required this.label,
//     required this.icon,
//     this.isSelected = false,
//     required this.onTap,
//       });
//
//
//
//   final int index;
//   final String label;
//   final IconData icon;
//   final bool isSelected;
//   final ValueChanged<int> onTap;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       behavior: HitTestBehavior.opaque,
//       onTap: () {
//         onTap(index);
//       },
//
//       child: SizedBox(
//         height: 70,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(
//               label,
//               style: isSelected
//                 ? const TextStyle(
//                   fontSize: 11,
//                   fontWeight: FontWeight.bold,
//                   color: AppColors.secondary)
//                 : const TextStyle(fontSize: 11),
//             ),
//             const SizedBox (height: 3,),
//             Icon(
//               icon,
//               size: 23,
//               color: isSelected ? AppColors.secondary : null,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// void _selectedItem(BuildContext context, item) {
//   switch (item) {
//     case 0:
//       Get.to(const SettingsPage());
//       break;
//     case 1:
//       Get.to(const VersionPage());
//       break;
//     case 2:
//       Get.offAll(const SignInScreen());
//       break;
//   }
// }