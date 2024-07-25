// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:softphone/models/message_data.dart';
// import 'package:softphone/screens/chat_screen.dart';
// import 'package:softphone/widgets/avatar.dart';
//
// import '../helpers.dart';
// import '../theme.dart';
//
// class MessagesPage extends StatelessWidget {
//   const MessagesPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     //ref add message overlay button
//     return  Scaffold(
//       floatingActionButton: FloatingActionButton.extended(
//         shape: const CircleBorder(),
//           splashColor: AppColors.primary,
//           onPressed: (){},
//           label: Icon(Icons.message, color: Theme.of(context).canvasColor,),
//           materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,),
//       body: CustomScrollView(
//           slivers: [
//             //Scrollable Header
//
//
//             // SliverAppBar(
//             //   pinned: true,
//             //   expandedHeight: 120,
//             //   flexibleSpace: FlexibleSpaceBar(
//             //     title: Text('DOES IT WOrk'),
//             //   ),
//             // ),
//
//
//
//             SliverList(
//           delegate: SliverChildBuilderDelegate(_delegate)
//             ),
//           ]
//       ),
//     );
//     }
//
//     Widget _delegate(BuildContext context, int index){
//       return _MessageTitle(
//           messageData: MessageData(
//             senderName: ('Name'),
//             message: ('Message Message Message Message Message Message Message Message Message Message Message Message Message MessageMessageMessage'),
//             messageDate: (DateTime.now()),
//             dateMessage: ('time'),
//             profilePicture: Helpers.randomPictureUrl()
//           ));
//   }
// }
//
// // ref to each message container
// class _MessageTitle extends StatelessWidget {
//   const _MessageTitle({
//     required this.messageData,
//   });
//
//   final MessageData messageData;
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Get.to(ChatScreen(messageData: messageData));
//
//       },
//       child: Container(
//         height: 90,
//         margin: const EdgeInsets.symmetric(horizontal: 8),
//         decoration: const BoxDecoration(
//           border: Border(
//             bottom: BorderSide(
//               color: Colors.grey,
//               width: 0.2,
//             )
//           )
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(4.0),
//           child: Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Avatar.medium(url: messageData.profilePicture),
//               ),
//               Expanded(child:
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 8.0),
//                     child: Text(messageData.senderName,
//                     overflow: TextOverflow.ellipsis,
//                     style: const TextStyle(
//                       letterSpacing: 0.2,
//                       wordSpacing: 1.5,
//                       fontWeight: FontWeight.w900
//                     ),),
//                   ),
//                   const SizedBox(height: 7,),
//                   Text(messageData.message,
//                     overflow: TextOverflow.ellipsis,
//                     style: const TextStyle(
//                     letterSpacing: 0.2,
//                     wordSpacing: 1.5,
//                   ),),
//
//                 ],
//               )),
//               Padding(
//                   padding: const EdgeInsets.only(right: 20),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   const SizedBox(height: 4,),
//                   Text(
//                     messageData.dateMessage.toUpperCase(),
//                     style: const TextStyle(
//                       fontSize: 11,
//                       letterSpacing: -0.2,
//                       fontWeight: FontWeight.w600,
//                       color: AppColors.textFaded,
//                     ),
//                   ),
//                   const SizedBox(height: 8,),
//                   Container(
//                     width: 18,
//                       height: 18,
//                     decoration: const BoxDecoration(
//                       color: AppColors.secondary,
//                       shape: BoxShape.circle,
//                     ),
//                     child: const Center(
//                       child: Text(
//                         '1',
//                         style: TextStyle(
//                           fontSize: 10,
//                           color: AppColors.textDark,
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
