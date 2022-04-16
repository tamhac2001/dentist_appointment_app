// import 'package:auto_route/auto_route.dart';
// import 'package:dentist_appointment_app/utils/app_router.dart';
// import 'package:dentist_appointment_app/widgets/my_button.dart';
// import 'package:dentist_appointment_app/widgets/widgets.dart';
// import 'package:flutter/material.dart';
//
// class AdminScreen extends StatelessWidget {
//   const AdminScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             MyButton(
//                 buttonText: 'Add dentist',
//                 onTap: () {
//                   AutoRouter.of(context).push(const AddDentistScreenRoute());
//                 }),
//             MyButton(
//                 buttonText: 'Add service',
//                 onTap: () {
//                   AutoRouter.of(context).push(const AddServiceScreenRoute());
//                 }),
//             // myButton('Add dentist', (){}),
//           ],
//         ),
//       ),
//     );
//   }
// }
