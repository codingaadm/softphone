// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:provider/provider.dart';
// import 'package:softphone/screens/screens.dart';
// import 'package:softphone/services/auth.dart';
// import 'package:softphone/theme.dart';
//
// import 'screens/sign_in_screen.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//   );
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) => ChangeNotifierProvider(
//   create: (context) => ThemeProvider(),
//   builder: (context, _)
//   {
//   final themeProvider = Provider.of<ThemeProvider>(context);
//
//     return MultiProvider(
//       providers: [
//         Provider<Auth>(
//           create: (_) => Auth(),
//         ),
//       ],
//       child: GetMaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: MyThemes.lightTheme,
//         darkTheme: MyThemes.darkTheme,
//         themeMode: themeProvider.themeMode,
//         title: 'Soft-phone',
//         home: const SignInScreen()
//       ),
//     );
//   }
//   );
// }
// // class AuthWrapper extends StatelessWidget {
// //   const AuthWrapper({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final firebaseUser = context.watch<User?>();
// //     if (firebaseUser != null){
// //       return const HomeScreen();
// //     }
// //     return const SignInScreen();
// //   }
// // }
