// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:softphone/screens/signIn/sign_in_screen.dart';
// import 'package:softphone/screens/verify_email.dart';
// import 'package:softphone/services/services.dart';
// import 'package:softphone/theme.dart';
// import 'package:get/get.dart';
// import '../widgets/widgets.dart';
//
// class EmailSignUp extends StatefulWidget {
//   const EmailSignUp({super.key});
//
//   @override
//   State<EmailSignUp> createState() => _EmailSignUpState();
// }
//
// class _EmailSignUpState extends State<EmailSignUp> {
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//
//   final _formKey = GlobalKey<FormState>();
//
//   @override
//   void dispose(){
//     emailController.dispose();
//     passwordController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final auth = Provider.of<Auth>(context);
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.primary,
//         centerTitle: true,
//         title: const Text( "Sign Up", style: TextStyle(fontFamily: 'nunito'), ),
//       actions: const [
//         ChangeThemeButton(),
//         // PopupMenuButton<int>(
//         //   icon: const Icon(Icons.menu),
//         //   color: Colors.white,
//         //   itemBuilder: (context) => [
//         //     const PopupMenuItem<int>(value: 0, child: Text(
//         //       "Settings",
//         //       style:
//         //       TextStyle(color: Colors.black, fontFamily: 'nunito'),
//         //     ),),
//         //     const PopupMenuItem<int>(value: 1, child: Text(
//         //       "Version",
//         //       style: TextStyle(
//         //           color: Colors.black,fontFamily: 'nunito'
//         //       ),
//         //     )),
//         //     const PopupMenuDivider(),
//         //
//         //     const PopupMenuItem<int>(value: 2, child: Row(
//         //       children: [
//         //         Icon(Icons.logout, color: Colors.black,),
//         //         SizedBox(width: 7,),
//         //         Text(
//         //           "Log Out",
//         //           style: TextStyle(
//         //               color: Colors.black, fontFamily: 'nunito'
//         //           ),
//         //         ),
//         //       ],
//         //     )),
//         //   ],onSelected: (item) => _selectedItem(context, item),),
//       ],),
//       body: Form(
//         key: _formKey,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               "Sign Up",
//               style: TextStyle(fontSize: 30,color: AppColors.textFaded,fontFamily: 'nunito'),
//             ),
//             SizedBox(height: MediaQuery.of(context).size.height * 0.08),
//             Container(
//               margin: const EdgeInsets.symmetric(horizontal: 20),
//               child: TextFormField(
//                 controller: emailController,
//                 decoration: const InputDecoration(
//                     hintText: "Email",
//             ),
//               keyboardType: TextInputType.emailAddress,
//               validator: (String? value){
//                   if (value == null || value.isEmpty){
//                     return 'Email is required!';
//                   }
//                   return null;},
//               ),),
//             const SizedBox(height: 20),
//             Container(
//               margin: const EdgeInsets.symmetric(horizontal: 20),
//               child: TextFormField(
//                 controller: passwordController,
//                 decoration: const InputDecoration(
//                     hintText: "Password"),
//                 validator: (String? value){
//                   if (value == null || value.isEmpty){
//                     return 'Password is required!';
//                   } else if (value.length < 6){
//                     return 'Password should be at least 6 characters';
//                   }
//                   return null;
//                 },
//               ),
//             ),
//             const SizedBox(height: 40),
//             Row(
//               children: [
//                 ElevatedButton(
//                   onPressed: (){
//                     Get.back(result: const SignInScreen());
//                   },
//                   style: ButtonStyle(
//                     backgroundColor: WidgetStateProperty.all(AppColors.primary),
//                     textStyle: WidgetStateProperty.all(
//                       const TextStyle(color: AppColors.primary,fontFamily: 'nunito'),
//                     ),
//                     minimumSize: WidgetStateProperty.all(
//                       Size(MediaQuery.of(context).size.width / 3.5, 40),
//                     ),
//                   ),
//                   child: const Text(
//                     "Back to Sign In",
//                     style: TextStyle(color: AppColors.secondary, fontSize: 14,fontFamily: 'nunito'),
//                   ),
//                 ),
//                 ElevatedButton(
//                   style: ButtonStyle(
//                     backgroundColor: WidgetStateProperty.all(AppColors.primary),
//                     textStyle: WidgetStateProperty.all(
//                       const TextStyle(color: AppColors.primary,fontFamily: 'nunito'),
//                     ),
//                     minimumSize: WidgetStateProperty.all(
//                       Size(MediaQuery.of(context).size.width / 3.5, 40),
//                     ),
//                   ),
//                   child: const Text(
//                     "Sign Up",
//                     style: TextStyle(color: AppColors.secondary, fontSize: 14,fontFamily: 'nunito'),
//                   ),
//                   onPressed: () async {
//                     final isValid = _formKey.currentState!.validate();
//
//                     await auth.handleSignUp(
//                         emailController.text, passwordController.text).then((value){
//                           Get.to(() => const VerifyEmailScreen());
//                     }).catchError((e) => (e));
//                   },
//                 ),
//
//               ],
//             ),
//           ],
//         ),
//       ),
//
//     );
//   }
// }
// // void _selectedItem(BuildContext context, item) {
// //   switch (item) {
// //     case 0:
// //       Get.to(const SettingsPage());
// //       break;
// //     case 1:
// //       Get.to(const VersionPage());
// //       break;
// //     case 2:
// //       Get.offAll(SignInScreen());
// //       break;
// //   }
// // }