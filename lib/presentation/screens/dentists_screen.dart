// import 'package:dentist_appointment_app/widgets/dentists_list_view.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// import '../widgets/convex_app_bar.dart';
// import '../widgets/widgets.dart';
//
// class DentistsScreen extends ConsumerWidget {
//   const DentistsScreen({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       bottomNavigationBar: const MyConvexAppBar(currentScreen:  1),
//       // This is handled by the search bar itself.
//       resizeToAvoidBottomInset: false,
//       body: Stack(
//         fit: StackFit.expand,
//         children:  [
//           // buildMap(),
//           // buildBottomNavigationBar(),
//           DentistFloatingSearchBar(),
//           Column(
//             children: [
//               Flexible(child: DentistsListView())
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
