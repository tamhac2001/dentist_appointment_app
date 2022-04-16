// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:dentist_appointment_app/models/dentist.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
//
// class DentistsListView extends ConsumerWidget {
//   const DentistsListView({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final dentistsList = ref.watch(dentistsListProvider);
//     // ref.read(DentistsListProvider.notifier).fetchData();
//     // print('service length'+DentistsList.length.toString());
//     return ListView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       itemCount: dentistsList.length,
//       itemBuilder: (context, index) {
//         // print(DentistsList[index].toString());
//         return ListItem(
//           dentist: dentistsList[index],
//         );
//       },
//     );
//   }
// }
//
// class ListItem extends StatelessWidget {
//   const ListItem({
//     Key? key,
//     required this.dentist,
//   }) : super(key: key);
//   final Dentist dentist;
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         title: Text(dentist.fullName!),
//         subtitle: AutoSizeText(dentist.phoneNumber!),
//         leading: const CircleAvatar(
//           backgroundColor: Colors.blue,
//         ),
//       ),
//     );
//   }
// }
