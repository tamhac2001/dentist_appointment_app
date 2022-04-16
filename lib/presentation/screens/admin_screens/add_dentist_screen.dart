// import 'package:auto_route/auto_route.dart';
// import 'package:dentist_appointment_app/models/dentist.dart';
// import 'package:dentist_appointment_app/services/auth_methods.dart';
// import 'package:dentist_appointment_app/services/database_methods.dart';
// import 'package:dentist_appointment_app/utils/utils.dart';
// import 'package:dentist_appointment_app/widgets/my_button.dart';
// import 'package:dentist_appointment_app/widgets/widgets.dart';
// import 'package:flutter/material.dart';
//
//
//
// class AddDentistScreen extends StatefulWidget {
//   const AddDentistScreen({Key? key}) : super(key: key);
//
//   @override
//   State<AddDentistScreen> createState() => _AddDentistScreenState();
// }
//
// class _AddDentistScreenState extends State<AddDentistScreen> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _fullNameController = TextEditingController();
//   final _phoneNumberController = TextEditingController();
//   final _formKey = GlobalKey<FormState>();
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Form(
//         key: _formKey,
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               MyTextFormField(
//                 controller: _emailController,
//                 inputType: TextInputType.emailAddress,
//                 label: 'Email',
//               ),
//               PasswordFormField(
//                 controller: _passwordController,
//               ),
//               MyTextFormField(
//                 controller: _fullNameController,
//                 inputType: TextInputType.name,
//                 label: 'Full name',
//               ),
//               MyTextFormField(
//                 controller: _phoneNumberController,
//                 inputType: TextInputType.phone,
//                 label: 'Phone',
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   MyButton(buttonText: 'Submit', onTap: _signUp),
//                   MyButton(
//                       buttonText: 'Cancel',
//                       onTap: () {
//                         AutoRouter.of(context).pop();
//                       })
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Future<void> _signUp() async {
//     if (_formKey.currentState!.validate()) {
//       final result = await AuthMethods.signUpDentistWithEmailAndPassword(
//           _emailController.text, _passwordController.text);
//       if (result.item1 == "success") {
//         final dentist = Dentist(
//             uid: result.item2.uid,
//             email: result.item2.email!,
//             fullName: _fullNameController.text,
//             phoneNumber: _phoneNumberController.text);
//         await DatabaseMethods.setDentistToFirestore(dentist);
//         showSnackBar(context, "Sign up successfully");
//         // await Future.delayed(const Duration(seconds: 3), () {
//         //   AutoRouter.of(context).replace(LoginScreenRoute(
//         //     email: _emailController.text,
//         //     password: _passwordController.text,
//         //   ));
//         // });
//       } else {
//         ScaffoldMessenger.of(context)
//             .showSnackBar(SnackBar(content: Text(result.item1)));
//       }
//     }
//   }
// }
