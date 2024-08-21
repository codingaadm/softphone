// import 'package:flutter/material.dart';
// import 'package:softphone/new/screens/settings%20page/functions/change%20email/local%20widgets/change_email_button.dart';
// import 'package:softphone/new/theme/theme_data.dart';
//
// class ChangeEmailForm extends StatefulWidget {
//   const ChangeEmailForm({
//     super.key,
//   });
//
//   @override
//   State<ChangeEmailForm> createState() => _ChangeEmailFormState();
// }
//
// class _ChangeEmailFormState extends State<ChangeEmailForm> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 5,
//       child: Form(
//         key: _formKey,
//         child: Column(
//           children: [
//             buildTextFormFields(),
//             ChangeEmailButton(
//                 formKey: _formKey,
//                 emailController: _emailController,
//             )],
//         ),
//       ),
//     );
//   }
//
//   Widget buildTextFormFields() {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           TextFormField(
//             cursorColor: Colors.red,
//             controller: _emailController,
//             decoration: InputDecoration(
//               hintStyle: TextStyle(color: CustomTheme.primary),
//               enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: CustomTheme.primary)),
//               hintText: 'Email',),
//             validator: (value) {
//               bool _isEmailValid = RegExp(
//                   r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                   .hasMatch(value!);
//               if (!_isEmailValid) {
//                 return 'Invalid email.';
//               }
//               return null;
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }