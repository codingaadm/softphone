// import 'dart:core';
// import 'package:firebase_auth/firebase_auth.dart' as auth;
//
// import '../helpers.dart';
//
//
//
// class Auth{
//   //creating an instance of Firebase auth
//   final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;
//
//   //method that maps the data that comes from firebase so that it matches our user model.
//   User? _firebaseUser(auth.User? user){
//
//   //Return null if the Firebase user object is null
//   if (user == null){
//   return null;
//   }
//
//   //If not null, return our user object and pass in the uid and the email
//   return User(user.uid, user.email);
//   }
//
//   //Return a Stream of users and map it so we can be able to use our _firebaseUser method
//   Stream<User?>? get user {
//   return _firebaseAuth.authStateChanges().map(_firebaseUser);
//   }
//
//   //Create the method handleSignInEmail and pass in the email and password
//   Future<User?> handleSignInEmail(String email, String password) async{
//
//   //Create the result variable and call the Firebase method to sign into their account.
//   final result = await _firebaseAuth.signInWithEmailAndPassword(
//   email: email, password: password);
//
//   //Return the user from the result variable
//   return _firebaseUser(result.user);
//
//   }
//   //Create the method handleSignUp and pass in the email and password the user entered
//   Future<User?> handleSignUp(String email, String password) async{
//
//   //Create the result variable and call the Firebase method to log into their account
//   final result = await _firebaseAuth.createUserWithEmailAndPassword(
//   email: email, password: password);
//
//   //Return the user from the result variable
//   return _firebaseUser(result.user);
//   }
//
//   //Create the logout functionality.
//   Future<void> logout() async{
//   return await _firebaseAuth.signOut();
//   }
//
//
// }
//
//
//












// class Auth {
//   final FirebaseAuth _auth;
//
//   Auth(this._auth);
//
//   User get user => _auth.currentUser!;
//
//   Stream<User?> get authState => FirebaseAuth.instance.authStateChanges();
//
//   // Sign Up User
//   Future<void> signUpWithEmail({
//     required String email,
//     required String password,
//     required BuildContext context,
//
//   }) async {
//     try {
//       await _auth.createUserWithEmailAndPassword(
//           email: email,
//           password: password);
//       await sendEmailVerification(context);}
//     on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         print("The password is to weak");
//       }
//       else if (e.code == 'email-already-in-use') {
//         print("An account already exists for that email");
//       }
//         showSnackBar(context, e.message!);
//     }
//   }
//
//   //Login in User
//   Future<void> loginWithEmail({
//     required String email,
//     required String password,
//     required BuildContext context,
//   }) async {
//     try {
//       await _auth.signInWithEmailAndPassword(
//           email: email,
//           password: password);
//       if (!user.emailVerified) {
//         await sendEmailVerification(context);
//       }
//     } on FirebaseAuthException catch (e) {
//         showSnackBar(context, e.message!);
//     }
//   }
//
//   //Email Verification
//   Future<void> sendEmailVerification(BuildContext context) async {
//     try {
//       _auth.currentUser!.sendEmailVerification();
//       showSnackBar(context, 'Email Verification sent');
//       } on FirebaseAuthException catch (e) {
//         showSnackBar(context, e.message!);
//     }
//   }
//
//   // Sign Out
//   Future<void> signOut(BuildContext context) async {
//     try {
//       await _auth.signOut();
//     } on FirebaseAuthException catch (e) {
//         showSnackBar(context, e.message!);// Displaying the error message
//     }
//   }
//
//   // Delete Account
//   Future<void> deleteAccount(BuildContext context) async {
//     try {
//       await _auth.currentUser!.delete();
//     } on FirebaseAuthException catch (e) {
//         showSnackBar(context, e.message!);
//     }
//   }
// }


