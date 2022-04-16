// import 'package:auto_route/auto_route.dart';
// import 'package:dentist_appointment_app/models/service.dart';
// import 'package:dentist_appointment_app/services/database_methods.dart';
// import 'package:dentist_appointment_app/widgets/my_button.dart';
// import 'package:flutter/material.dart';
// import 'package:uuid/uuid.dart';
//
// import '../../utils/utils.dart';
// import '../../widgets/widgets.dart';
//
// class AddServiceScreen extends StatefulWidget {
//   const AddServiceScreen({Key? key}) : super(key: key);
//
//   @override
//   _AddServiceScreenState createState() => _AddServiceScreenState();
// }
//
// class _AddServiceScreenState extends State<AddServiceScreen> {
//   final _nameController = TextEditingController();
//   final _descriptionController = TextEditingController();
//   final _costController = TextEditingController();
//
//   final _formKey = GlobalKey<FormState>();
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
//                 controller: _nameController,
//                 inputType: TextInputType.name,
//                 label: 'Service name',
//               ),
//               MyTextFormField(
//                 controller: _descriptionController,
//                 inputType: TextInputType.text,
//                 label: 'Service description',
//               ),
//               MyTextFormField(
//                 controller: _costController,
//                 inputType: const TextInputType.numberWithOptions(signed: true),
//                 label: 'Service cost',
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   MyButton(buttonText: 'Submit', onTap: _addService),
//                   MyButton(
//                       buttonText: 'Cancel',
//                       onTap: () {
//                         AutoRouter.of(context).pop();
//                       })
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Future<void> _addService() async {
//     if (_formKey.currentState!.validate()) {
//       final service = Service(
//           id: const Uuid().v4(),
//           name: _nameController.text,
//           description: _descriptionController.text,
//           cost: double.parse(_costController.text),
//           timeOfUse: 0);
//       await DatabaseMethods.addServiceToFirestore(service);
//       showSnackBar(context, "Add service successfully");
//     }
//   }
// }
