// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:provider/provider.dart';
// import 'package:softphone/widgets/change_theme_button.dart';
// import '../services/auth.dart';
// import '../theme.dart';
// import 'package:softphone/screens/screens.dart';
//
//
// class SignInScreen extends StatefulWidget {
//   const SignInScreen({super.key});
//
//   @override
//   State<SignInScreen> createState() => _SignInScreenState();
// }
//
// class _SignInScreenState extends State<SignInScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final _formKey = GlobalKey<FormState>();
//
//   @override
//   void dispose(){
//     emailController.dispose();
//     passwordController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     final auth = Provider.of<Auth>(context);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.primary,
//         centerTitle: true,
//         title: const Text( "Login" , style: TextStyle(color: AppColors.secondary,fontFamily: 'nunito'),),
//         actions: const [ChangeThemeButton()],),
//       body: Form(
//         key: _formKey,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               "Login",
//               style: TextStyle(fontSize: 30, color: AppColors.textFaded,fontFamily: 'nunito'),
//             ),
//             SizedBox(height: MediaQuery.of(context).size.height * 0.08),
//             Container(
//               margin: const EdgeInsets.symmetric(horizontal: 20),
//               child: TextFormField(
//                 style: const TextStyle(fontFamily: 'nunito'),
//                 controller: emailController,
//                 decoration: const InputDecoration(
//                   hintText: 'Enter your email',
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//                 validator: (String? value){
//                   if (value == null || value.isEmpty){
//                     return 'Email is required!';
//                   }
//                   return null;
//                 },
//               ),
//             ),
//             const SizedBox(height: 20),
//             Container(
//               margin: const EdgeInsets.symmetric(horizontal: 20),
//               child: TextFormField(
//                 style: const TextStyle(fontFamily: 'nunito'),
//                 controller: passwordController,
//                 decoration: const InputDecoration(
//                   hintText: 'Enter your password',
//                 ),
//                 validator:(String? value){
//                   if (value == null || value.isEmpty){
//                     return 'Email is required!';
//                   }
//                   return null;
//                 },
//               ),
//             ),
//             const SizedBox(height: 40),
//             Row(
//               children: [
//                 ElevatedButton(
//                   style: ButtonStyle(
//                     minimumSize: WidgetStateProperty.all(
//                         Size(MediaQuery.of(context).size.width / 3.5, 40),),
//                     backgroundColor: WidgetStateProperty.all(AppColors.primary),),
//
//                   child: const Text(
//                     "Login",
//                     style: TextStyle(color: AppColors.secondary, fontSize: 14,fontFamily: 'nunito'),
//                   ),
//                   onPressed: () async {
//                     final isValid = _formKey.currentState!.validate();
//                     await auth.handleSignInEmail(
//                       emailController.text, passwordController.text
//                     ).then((value){
//                      Get.to(const HomeScreen());
//                     }).catchError((e) => (e));
//                   },
//                 ),
//                 ElevatedButton(
//                     style: ButtonStyle(
//                         backgroundColor: WidgetStateProperty.all(AppColors.primary),
//                         minimumSize: WidgetStateProperty.all(
//                           Size(MediaQuery.of(context).size.width / 3.5, 40),)),
//                     onPressed: (){
//                   Get.to(const EmailSignUp());
//                 },
//                     child: const Text("Sign Up",
//                     style: TextStyle(fontSize: 14,color: AppColors.secondary, fontFamily: 'nunito'),))
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
