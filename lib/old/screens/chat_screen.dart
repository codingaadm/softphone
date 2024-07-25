// import 'package:flutter/cupertino.dart';
// import 'package:softphone/models/models.dart';
// import 'package:flutter/material.dart';
// import 'package:softphone/widgets/widgets.dart';
// import 'package:softphone/theme.dart';
//
//
//
// class ChatScreen extends StatelessWidget {
//   static Route route(MessageData data) => MaterialPageRoute(
//       builder: (context) => ChatScreen(messageData: data,)
//   );
//   const ChatScreen({
//     super.key,
//     required this.messageData,
//   });
//
//   final MessageData messageData;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: Theme.of(context).iconTheme,
//         centerTitle: false,
//         backgroundColor: AppColors.primary,
//         elevation: 0,
//         leadingWidth: 54,
//         leading: Align(
//           alignment: Alignment.centerRight,
//           child: IconBackground(icon: CupertinoIcons.back, onTap: ( ){
//             Navigator.of(context).pop();
//           }
//           ),
//         ),
//         title: _AppBarTitle(
//           messageData: messageData,
//         ),
//         actions: [
//           Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Center(
//               child: IconBorder(
//                 icon: CupertinoIcons.video_camera_solid,
//                 onTap: () {},
//               ),
//             ),
//           ),
//           Padding(
//               padding: const EdgeInsets.only(right: 20),
//           child: Center(
//             child: IconBorder(
//               icon: CupertinoIcons.phone_solid,
//               onTap: () {},
//             ),
//           ),
//           )
//
//         ],
//       ),
//       body: const Column(
//         children: [
//           Expanded(
//               child: _DemoMessage()),
//           _ActionBar(),
//         ],
//       ),
//     );
//   }
// }
// class _DemoMessage extends StatelessWidget {
//   const _DemoMessage();
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: ListView(
//         children: const [
//           _DateLabel(label: 'Yesterday'),
//           _MessageTile(
//             message: 'HI dsugfsdiufg iuewgiu dgfiuwgf weugf ',
//             messageDate: '12:02',
//           ),
//           _MessageOwnTile(
//             message: 'hi iwuefgwei ugfweiugf ewiefuwgqi9uegfiuwef ',
//             messageDate: '12:03',
//           ),
//           _MessageTile(
//             message: 'HI dsugfsdiufg iuewgiu dgfiuwgf weugf ',
//             messageDate: '12:02',
//           ),
//           _MessageOwnTile(
//             message: 'hi iwuefgwei ugfweiugf ewiefuwgqi9uegfiuwef ',
//             messageDate: '12:03',
//           ),
//           _MessageTile(
//             message: 'HI dsugfsdiufg iuewgiu dgfiuwgf weugf ',
//             messageDate: '12:02',
//           ),
//           _MessageOwnTile(
//             message: 'hi iwuefgwei ugfweiugf ewiefuwgqi9uegfiuwef ',
//             messageDate: '12:03',
//           ),
//           _MessageTile(
//             message: 'HI dsugfsdiufg iuewgiu dgfiuwgf weugf ',
//             messageDate: '12:02',
//           ),
//           _MessageOwnTile(
//             message: 'hi iwuefgwei ugfweiugf ewiefuwgqi9uegfiuwef ',
//             messageDate: '12:03',
//           ),
//           _MessageTile(
//             message: 'HI dsugfsdiufg iuewgiu dgfiuwgf weugf ',
//             messageDate: '12:02',
//           ),
//           _MessageOwnTile(
//             message: 'hi iwuefgwei ugfweiugf ewiefuwgqi9uegfiuwef ',
//             messageDate: '12:03',
//           ),
//         ],
//       ),
//     );
//   }
// }
// // ref to date header
// class _DateLabel extends StatelessWidget {
//   const _DateLabel({
//     required this.label});
//
//   final String label;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 32),
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Padding(padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
//             child: Text(label,
//             style: const TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.bold,
//               color: AppColors.textFaded,
//
//             ),
//             ),
//             ),
//           ),
//       )
//     );
//   }
// }
// // ref to personal message
// class _MessageOwnTile extends StatelessWidget {
//   const _MessageOwnTile({
//     required this.message,
//     required this.messageDate});
//
//   final String message;
//   final String messageDate;
//
//   static const _borderRadius = 26.0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.symmetric(vertical: 4.0),
//       child: Align(
//         alignment: Alignment.centerRight,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             Container(
//               decoration: const BoxDecoration(
//                 color: AppColors.secondary,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(_borderRadius),
//                   bottomRight: Radius.circular(_borderRadius),
//                   bottomLeft: Radius.circular(_borderRadius)
//                 )
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
//                 child: Text(
//                   message,
//                   style: const TextStyle(
//                     color: AppColors.textLight
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//                 padding:const EdgeInsets.only(top: 8),
//               child: Text(
//                 messageDate,
//                 style: const TextStyle(
//                   color: AppColors.textFaded,
//                   fontSize: 10,
//                   fontWeight: FontWeight.bold
//                 ),
//               ),)
//           ],
//         ),
//       ),);
//   }
// }
// // ref to received message
// class _MessageTile extends StatelessWidget {
//   const _MessageTile({
//     required this.message,
//     required this.messageDate});
//
//   final String message;
//   final String messageDate;
//
//   static const _borderRadius = 26.0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.symmetric(vertical: 4),
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               decoration: const BoxDecoration(
//                 color: AppColors.primary,
//                 borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(_borderRadius),
//                   topLeft: Radius.circular(_borderRadius),
//                   bottomRight: Radius.circular(_borderRadius)
//                 )
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
//                 child: Text(message,
//                 style: const TextStyle(
//                   color: AppColors.textLight,
//                 ),),
//               ),
//             ),
//             Padding(
//                 padding: const EdgeInsets.only(top: 8),
//               child: Text(
//                 messageDate,
//                 style: const TextStyle(
//                   color: AppColors.textFaded,
//                   fontSize: 10,
//                   fontWeight: FontWeight.bold
//                 ),
//               )
//             ) ,
//           ],
//         ),
//       ),);
//   }
// }
//
//
//
//
// // ref to app bar profile/name
// class _AppBarTitle extends StatelessWidget {
//   const _AppBarTitle({
//     required this.messageData});
//
// final MessageData messageData;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Avatar.small(url: messageData.profilePicture),
//         const SizedBox(
//           width: 16,
//         ),
//         Expanded(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   messageData.senderName,
//                   overflow: TextOverflow.ellipsis,
//                   style: const TextStyle(fontSize: 14),
//                 ),
//                 // const SizedBox( height: 2,),
//                 // const Text(
//                 //   'Online now',
//                 //   style: TextStyle(
//                 //     fontSize: 10,
//                 //     fontWeight: FontWeight.bold,
//                 //     color: Colors.green,
//                 //   ),
//                 //
//                 // )
//               ],
//             ))
//       ],
//     );
//   }
// }
// class _ActionBar extends StatelessWidget {
//   const _ActionBar();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         top: true,
//         bottom: true,
//         child: Row(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 border: Border(
//                   right: BorderSide(
//                     width: 2,
//                     color: Theme.of(context).dividerColor,
//                   )
//                 )
//               ),
//               child: const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 16.0),
//                 child: Align(
//                   alignment: Alignment.center,
//                   child: Icon(
//                     color: AppColors.primary,
//                     CupertinoIcons.camera_on_rectangle_fill,
//                   ),
//                 ),
//               ),
//             ),
//             const Expanded(
//                 child: Padding(
//                     padding: EdgeInsets.only(left: 16.0),
//                 child: TextField(
//                   style: TextStyle(fontSize: 14),
//                   decoration: InputDecoration(
//                     hintText: 'Type Something',
//                     border: InputBorder.none,
//                   ),
//                 ),)),
//             Padding(
//                 padding: const EdgeInsets.only(
//                   left: 12,
//                   right: 24,
//                   bottom: 8
//                 ),
//               child: GlowingActionButton(
//                   color: AppColors.secondary,
//                   icon: Icons.send_outlined,
//                   onPressed: () { }
//               ),
//             )
//           ],
//         ));
//   }
// }
