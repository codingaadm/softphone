import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softphone/new/screens/dial%20page/dial_pad_page.dart';
import 'package:softphone/new/screens/verfiy/local%20widgets/verify_app_bar.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  bool isEmailVerified = false;
  bool canResendEmail = false;
  User? user = FirebaseAuth.instance.currentUser!;
  Timer? timer;


  @override
  void initState(){
    super.initState();
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    if (!isEmailVerified){
      sendVerifyEmail();
      timer = Timer.periodic(const Duration(seconds: 3), (_) => checkEmailVerified());
    }
    final auth = FirebaseAuth.instance;
    user = auth.currentUser!;

  }
  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) => isEmailVerified
  ?  DialPadPage() : Scaffold(
    appBar: const VerifyAppBar(),
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            const SizedBox(height: 300,),
            Center(child: Text("Email has been sent to ${user!.email}",)),
            ElevatedButton.icon(
                onPressed: (){
                  canResendEmail ? sendVerifyEmail () : sendVerifyEmail();
                },
                icon: const Icon(Icons.email, size: 32,),
                  label: const Text('Resend Email', style: TextStyle(fontSize: 24),),),
            ElevatedButton.icon(
              onPressed: () => FirebaseAuth.instance.signOut,
              icon: const Icon(Icons.logout_outlined),
              label: const Text('Sign Out', style: TextStyle(fontSize: 24),),)
          ],
        ),
      ),
    );
  Future checkEmailVerified() async{
    await FirebaseAuth.instance.currentUser!.reload();
    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });
    if(user!.emailVerified){
      timer?.cancel();
      Get.to(() =>  DialPadPage());}
  }
  Future sendVerifyEmail() async{
    try{
      final user = FirebaseAuth.instance.currentUser!;
      await  user.sendEmailVerification();
      setState(() => canResendEmail = false);
      await Future.delayed(const Duration(seconds: 5));
      setState(() => canResendEmail = true);
    }catch (e){
      Get.snackbar("Error Occured", e.toString());
    }
  }
}