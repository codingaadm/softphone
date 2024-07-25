//       PopupMenuButton<int>(
//       icon: const Icon(Icons.menu),
//       color: Colors.white,
//       itemBuilder: (context) => [
//         const PopupMenuItem<int>(value: 0, child: Text(
//           "Settings",
//           style:
//           TextStyle(color: Colors.black, fontFamily: 'nunito'),
//         ),),
//         const PopupMenuItem<int>(value: 1, child: Text(
//           "Version",
//           style: TextStyle(
//               color: Colors.black,fontFamily: 'nunito'
//           ),
//         )),
//         const PopupMenuDivider(),
//
//         const PopupMenuItem<int>(value: 2, child: Row(
//           children: [
//             Icon(Icons.logout, color: Colors.black,),
//             SizedBox(width: 7,),
//             Text(
//               "Log Out",
//               style: TextStyle(
//                   color: Colors.black, fontFamily: 'nunito'
//               ),
//             ),
//           ],
//         )),
//       ],onSelected: (item) => _selectedItem(context, item),);
//   }
// }
//
//
//
// void _selectedItem(BuildContext context, item) {
// switch (item) {
// case 0:
// Navigator.of(context)
//     .push(MaterialPageRoute(builder: (context) => const SettingsPage()));
// break;
// case 1:
// Navigator.of(context)
//     .push(MaterialPageRoute(builder: (context) => const VersionPage()));
// break;
// case 2:
// Navigator.of(context).pushAndRemoveUntil(
// MaterialPageRoute(builder: (context) => const SignInScreen()),
// (route) => false);
// break;
// }
// }