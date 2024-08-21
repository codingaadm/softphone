import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:softphone/new/root.dart';
import 'package:softphone/new/screens/home%20page/home_screen.dart';
import 'package:softphone/new/screens/signIn/sign_in.dart';

class AuthController extends GetxController{
  FirebaseAuth auth = FirebaseAuth.instance;
  var isSignedIn = false.obs;
  var displayName = '';
  
  User? get userProfile => auth.currentUser;
  
  @override
  void onInit(){
    displayName = userProfile != null ? userProfile!.displayName! : '';
    super.onInit();
  }
  
  void signUp(String name, String email, String password) async{
    try{
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
            displayName = name;
            auth.currentUser!.updateDisplayName(name);
      });
      update();
      Get.offAll(() => const SignIn());
    } on FirebaseAuthException catch (e) {

      String title = e.code.replaceAll(RegExp('-'), '').capitalize!;

      String message = '';

      if (e.code == 'wrong-password'){
        message = 'Invalid Password. Please try again!';
      }else if (e.code == 'user-not-found'){
        message = 'No account exists for this email';
      }else if (e.code == 'email-already-in-use'){
        message = 'Account already created with this email';
      }
      else {
        message = e.message.toString();
      }
      Get.snackbar(title, message, snackPosition: SnackPosition.BOTTOM);
    }catch (e){
      Get.snackbar('Error Occurred!', e.toString(), snackPosition: SnackPosition.BOTTOM);
    }
  }
    void signIn(String email, String password) async{
      try{
        await auth
            .signInWithEmailAndPassword(
            email: email,
            password: password)
            .then((value) => displayName = userProfile!.displayName!);
        update();
        Get.offAll(const HomeScreen());
      } on FirebaseAuthException catch (e){
        String title = e.code.replaceAll(RegExp('-'), ' ').capitalize!;
        String message = '';

        if (e.code == 'wrong-password') {
          message = 'Invalid Password. Please try again!';
        } else if (e.code == 'user-not-found') {
          message =
          ('The account does not exists for $email. Create your account by signing up.');
        } else {
          message = e.message.toString();
        }
        Get.snackbar(title, message,
        snackPosition: SnackPosition.BOTTOM);
      }catch (e) {
        Get.snackbar(
            'Error occurred!',
            e.toString(),
      snackPosition: SnackPosition.BOTTOM);
      }
    }
    void resetPassword(String email) async{
      try{
        await auth.sendPasswordResetEmail(email: email);
        Get.back();
      } on FirebaseAuthException catch (e){
        String title = e.code.replaceAll(RegExp('-'), ' ').capitalize!;
        String message = '';

        if (e.code == 'user-not-found'){
          message = 'No account exists for this email';
        }else {
          message = e.message.toString();
        }
        Get.snackbar(title, message, snackPosition: SnackPosition.BOTTOM);
      }catch (e){
        Get.snackbar('Error Occurred!', e.toString(), snackPosition: SnackPosition.BOTTOM);
      }
    }
    void signOut() async {
      try{
        await auth.signOut();
        displayName = '';
        isSignedIn.value = false;
        update();
        Get.offAll(() => const Root());
      }catch (e) {
        Get.snackbar('Error Occurred!', e.toString(), snackPosition: SnackPosition.BOTTOM);
      }
    }
    void updateEmail() async {

    }
  }
extension StringExtension on String{
  String capitalizeString(){
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}