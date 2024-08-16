import 'package:flutter/material.dart';
import 'package:flutter_dialpad/flutter_dialpad.dart';

class DialPadPage extends StatefulWidget {
  @override
  _DialPadState createState() => _DialPadState();
}

class _DialPadState extends State<DialPadPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DialPad(
          enableDtmf: true,
          outputMask: "(000) 000-0000",
          backspaceButtonIconColor: Colors.black,
          makeCall: (number){
            print(number);
                   }
      ),
      // child: SafeArea(
      //       child:
      //       DialPad(
      //           enableDtmf: true,
      //           outputMask: "(000) 000-0000",
      //           backspaceButtonIconColor: Colors.red,
      //           makeCall: (number){
      //             print(number);
      //           }
      //       )
      //   ),
      );
  }
}
//   String display = '';
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       child: Scaffold(
//         body: SafeArea(
//             child: Column(
//               children: [
//                 ListTile(
//                   leading: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       display,
//                       style: TextStyle(
//                           fontSize: 35,
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),),
//                 Row(
//                   children: [
//                     dialPadButton(size, '1', color: Colors.black),
//                     dialPadButton(size, '2', color: Colors.black),
//                     dialPadButton(size, '3', color: Colors.black)
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     dialPadButton(size, '4', color: Colors.black),
//                     dialPadButton(size, '5', color: Colors.black),
//                     dialPadButton(size, '6', color: Colors.black)
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     dialPadButton(size, '7', color: Colors.black),
//                     dialPadButton(size, '8', color: Colors.black),
//                     dialPadButton(size, '9', color: Colors.black)
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     dialPadButton(size, '*', color: Colors.black),
//                     dialPadButton(size, '0', color: Colors.black),
//                     dialPadButton(size, '#', color: Colors.black)
//                   ],
//                 ),
//                 InkWell(
//                   child: Container(
//                     height: 80,
//                     width: double.infinity,
//                     color: Colors.amber,
//                     child: Center(
//                       child: Icon(
//                         Icons.call,
//                         color: Colors.white,
//                         size: 40,
//                       ),
//                     ),
//                   ),
//                   onTap: () async{
//                     FlutterPhoneDirectCaller.callNumber(display);
//                   },
//                 )
//               ],
//             ),
//           ),
//       ),
//       );
//   }
//
//   Widget dialPadButton(Size size, String value, {required Color color}) {
//     return InkWell(
//       highlightColor: Colors.black45,
//       onTap: () {
//         setState(() {
//           display = display + value;
//         });
//       },
//       child: Container(
//         height: size.height * 0.15,
//         width: size.width * 0.33,
//         decoration:
//         BoxDecoration(border: Border.all(color: Colors.grey, width: 0.025)),
//         child: Center(
//           child: Text(
//             value,
//             style: TextStyle(
//                 color: color ?? Colors.purple,
//                 fontSize: 35,
//                 fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//     );
//   }
// }