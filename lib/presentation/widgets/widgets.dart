import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Function(String value) onChanged;
  final String? Function(String? value) validator;
  final IconData? iconData;
  final TextInputType inputType;
  final bool? enable;

  const MyTextFormField({
    Key? key,
    required this.controller,
    required this.label,
    required this.onChanged,
    required this.validator,
    this.iconData,
    required this.inputType,
    this.enable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        enabled: enable,
        controller: controller,
        onChanged: onChanged,
        validator: validator,
        keyboardType: inputType,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: const OutlineInputBorder(gapPadding: 2.0),
          label:  Text(label),
          prefixIcon: Icon(iconData),
        ));
  }
}

class PasswordFormField extends StatefulWidget {
  final TextEditingController controller;
  final String? errorString;
  final Function(String value)? onChanged;
  final String? Function(String? value)? validator;

  const PasswordFormField({
    Key? key,
    required this.controller,
    this.errorString,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      validator: widget.validator,
      keyboardType: TextInputType.visiblePassword,
      obscureText: isObscure,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        label: const Text("Password"),
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: (isObscure)
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
          onPressed: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
        ),
      ),
    );
  }
}

// class DentistFloatingSearchBar extends ConsumerWidget {
//   const DentistFloatingSearchBar({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final dentistsListSearch = ref.watch(dentistsListSearchProvider);
//     final isPortrait =
//         MediaQuery.of(context).orientation == Orientation.portrait;
//     return FloatingSearchBar(
//       hint: 'Search dentist',
//       scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
//       transitionDuration: const Duration(milliseconds: 800),
//       transitionCurve: Curves.easeInOut,
//       physics: const BouncingScrollPhysics(),
//       axisAlignment: isPortrait ? 0.0 : -1.0,
//       openAxisAlignment: 0.0,
//       width: isPortrait ? 600 : 500,
//       debounceDelay: const Duration(milliseconds: 500),
//       onQueryChanged: (query) {
//         // Call your model, bloc, controller here.
//         ref.watch(dentistSearchKeywordProvider.notifier).state = query;
//       },
//       body: ListView.separated(
//         itemCount: dentistsListSearch.length,
//         separatorBuilder: (context, index) => const Divider(),
//         itemBuilder: (context, index) => Card(
//           child: ListTile(
//             leading: CircleAvatar(
//                 backgroundImage:
//                     NetworkImage(dentistsListSearch[index].avatarUrl)),
//             title: Text(dentistsListSearch[index].fullName!),
//           ),
//         ),
//       ),
//       // Specify a custom transition to be used for
//       // animating between opened and closed stated.
//       transition: CircularFloatingSearchBarTransition(),
//       actions: [
//         FloatingSearchBarAction(
//           showIfOpened: false,
//           child: CircularButton(
//             icon: const Icon(Icons.search),
//             onPressed: () {},
//           ),
//         ),
//         FloatingSearchBarAction.searchToClear(
//           showIfClosed: false,
//         ),
//       ],
//       builder: (context, transition) {
//         return ClipRRect(
//           borderRadius: BorderRadius.circular(8),
//           child: Material(
//             color: Colors.white,
//             elevation: 4.0,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: ref
//                   .watch(dentistsListSearchProvider)
//                   .map((dentist) => Text(dentist.fullName!))
//                   .toList(),
//               // children: Colors.accents.map((color) {
//               //   return Container(height: 112, color: color);
//               // }).toList(),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    BuildContext context, String content) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(content)));
}
