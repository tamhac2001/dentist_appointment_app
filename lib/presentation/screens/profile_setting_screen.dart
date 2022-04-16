import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/domain/auth/user.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../application/utils/enums.dart';
import '../../application/utils/providers.dart';
import '../../domain/core/errors.dart';
import '../routes/app_router.dart';
import '../widgets/convex_app_bar.dart';
import '../widgets/my_button.dart';
import '../widgets/widgets.dart';

class ProfileSettingScreen extends ConsumerStatefulWidget {
  const ProfileSettingScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ProfileSettingScreenState createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends ConsumerState<ProfileSettingScreen> {
  bool _isEditAble = false;
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  late Gender _dropDownValue;

  @override
  void initState() {
    super.initState();
    final user = ref.read(profileSettingFormStateProvider).user;
    _fullNameController.text =
        user.fullName.isValid() ? user.fullName.getOrCrash() : '';
    _phoneNumberController.text =
        user.phoneNumber.isValid() ? user.phoneNumber.getOrCrash() : '';
    _dropDownValue = user.gender;
  }

  @override
  void dispose() {
    super.dispose();
    _fullNameController.dispose();
    _phoneNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final profileSettingFormState = ref.watch(profileSettingFormStateProvider);
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile setting"),
        automaticallyImplyLeading: false,
        actions: [
          // Edit Button
          IconButton(
            icon: const Icon(Icons.edit),
            tooltip: 'Edit',
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: const SingleChildScrollView(
                          child: ListTile(
                            title: Text("Are you sure to edit your profile?"),
                          ),
                        ),
                        actions: [
                          TextButton(
                            child: const Text("Yes"),
                            onPressed: () {
                              Navigator.of(context).pop();
                              passwordInputAlertDialog(context, () {
                                setState(() {
                                  _isEditAble = true;
                                });
                              });
                            },
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("No")),
                        ],
                      ));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
            tooltip: "Sign out",
            onPressed: () {
              _signOut();
            },
          )
        ],
      ),
      bottomNavigationBar: const MyConvexAppBar(currentScreen: 3),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Form(
          key: formKey,
          autovalidateMode: profileSettingFormState.showErrorMessage
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              // Avatar
              Center(
                child: Stack(children: [
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage(profileSettingFormState.user.avatarUrl),
                    radius: 80,
                  ),
                  _isEnable()
                      ? Positioned(
                          bottom: -10,
                          right: 10,
                          child: IconButton(
                            icon: const Icon(Icons.add_a_photo,
                                color: Colors.black),
                            onPressed: () async {
                              final imagePicker = ImagePicker();
                              final image = await imagePicker.pickImage(
                                  source: ImageSource.camera);
                              if (image != null) {
                                ref
                                    .read(profileSettingFormStateProvider
                                        .notifier)
                                    .avatarChanged(await image.readAsBytes());
                              }
                            },
                          ),
                        )
                      : const SizedBox(
                          width: 0,
                          height: 0,
                        ),
                ]),
              ),
              Expanded(
                flex: 2,
                child: MyTextFormField(
                  label: 'Full name'.tr(),
                  controller: _fullNameController,
                  inputType: TextInputType.name,
                  enable: _isEnable(),
                  validator: (_) {
                    return profileSettingFormState.user.fullName.value.fold(
                        (failure) => failure.maybeWhen(
                            empty: (_) => 'Please input your name',
                            orElse: () => null),
                        (_) => null);
                  },
                  onChanged: (String value) {
                    ref
                        .read(profileSettingFormStateProvider.notifier)
                        .fullNameChanged(value);
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: MyTextFormField(
                  controller: _phoneNumberController,
                  enable: _isEnable(),
                  inputType: TextInputType.phone,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: const Text("Gender").tr()),
                  Expanded(
                    flex: 2,
                    child: DropdownButtonFormField<Gender?>(
                      validator: ((value) => value == null ? 'required' : null),
                      isExpanded: false,
                      value: _dropDownValue,
                      hint: const Text("male"),
                      items: Gender.values
                          .map((gender) => DropdownMenuItem<Gender>(
                                value: gender,
                                child: Text(gender.name),
                              ))
                          .toList(),
                      onChanged: (_isEnable())
                          ? (gender) {
                              setState(() {
                                _dropDownValue = gender!;
                              });
                            }
                          : null,
                    ),
                  ),
                ],
              ),
              if (_isEnable()) _buildRowButton(_formKey),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRowButton() {
    return Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyButton(
              buttonText: "Cancel",
              onTap: () {
                setState(() {
                  _isEditAble = false;
                });
                AutoRouter.of(context).removeLast();
                AutoRouter.of(context).push(const ProfileSettingScreenRoute());
              }),
          MyButton(
              buttonText: "Submit",
              onTap: () async {
                if (formKey.currentState!.validate()) {
                  ref.read(patientProvider.notifier).state = ref
                      .read(patientProvider.notifier)
                      .state
                      .copyWith(
                          fullName: _fullNameController.text,
                          phoneNumber: _phoneNumberController.text,
                          gender: _dropDownValue);
                  await DatabaseMethods.updatePatientToFirestore(
                      ref.read(patientProvider.notifier).state);
                  setState(() {
                    _isEditAble = false;
                    ref.read(isFirstTimeSignInProvider.notifier).state = false;
                  });
                }
              }),
        ],
      ),
    );
  }

  Future<dynamic> passwordInputAlertDialog(
      BuildContext context, Function() notifyParent) {
    return showDialog(
      context: context,
      builder: (context) {
        final _passwordController = TextEditingController();
        String? _passwordCheckResult;
        return StatefulBuilder(
          builder: (context, setState) => AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                children: [
                  const ListTile(
                    title: Text("Please insert your password to continue"),
                  ),
                  PasswordFormField(
                    controller: _passwordController,
                    errorString: _passwordCheckResult,
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                child: const Text("Submit"),
                onPressed: () async {
                  final result =
                      await AuthMethods.checkPassword(_passwordController.text);
                  if (result == "success") {
                    notifyParent();
                    Navigator.of(context).pop();
                  } else {
                    setState(() {
                      _passwordCheckResult = result;
                    });
                  }
                },
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel")),
            ],
          ),
        );
      },
    );
  }

  bool _isEnable() {
    return ref.watch(isFirstTimeSignInProvider) || _isEditAble;
  }

  Future<void> _signOut() async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: const SingleChildScrollView(
              child: ListTile(
                title: Text("Do you want to sign out?"),
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () async {
                    await AuthMethods.signOut();
                    // !!TODO uncomment
                    AutoRouter.of(context).replace(const SplashScreenRoute());
                  },
                  child: const Text("Yes")),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("No"),
                autofocus: true,
              )
            ],
          );
        });
  }
}
