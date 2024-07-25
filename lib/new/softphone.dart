import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:softphone/new/controller/controller_bindings.dart';
import 'package:softphone/new/screens/signIn/sign_in.dart';
import 'package:softphone/new/theme/theme_data.dart';

import 'root.dart';

void main() async {
  // Firebase init
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
      return GetMaterialApp(
        theme: CustomTheme.lightTheme,
        darkTheme: CustomTheme.darkTheme,
        themeMode: ThemeMode.system,
        // bind our app with the  Getx Controller
        initialBinding: ControllerBindings(),
        debugShowCheckedModeBanner: false,
        home: const Root(),
      );
    }
  }