import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/utils/providers.dart';
import '../../domain/auth/auth_failure.dart';
import '../widgets/widgets.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final signInFormState = ref.watch(signInFormStateProvider);
    ref.listen<Option<Either<AuthFailure, Unit>>>(
        signInFormStateProvider
            .select((value) => value.authFailureOrSuccessOption), (_, next) {
      next.fold(
          () {},
          (either) => either.fold(
              (failure) => showSnackBar(
                  context,
                  failure.when(
                    cancelledByUser: () => 'Cancelled',
                    emailAlreadyInUse: () => 'Email already in use',
                    invalidEmailAndPasswordCombination: () =>
                        'Invalid email and password combination',
                    serverError: () => 'Server error',
                  )),
              (_) {}));
    });
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Form(
            key: _formKey,
            autovalidateMode: signInFormState.showErrorMessage
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(),
                  flex: 2,
                ),
                // email
                MyTextFormField(
                  controller: _emailController,
                  label: "Email",
                  iconData: Icons.mail,
                  inputType: TextInputType.emailAddress,
                  onChanged: (value) {
                    ref
                        .read(signInFormStateProvider.notifier)
                        .emailChanged(value);
                  },
                  validator: (_) {
                    return signInFormState.emailAddress.value.fold(
                        (failure) => failure.maybeWhen(
                            invalidEmail: (_) => 'Invalid Email',
                            orElse: () => null),
                        (_) => null);
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                // password
                PasswordFormField(
                  controller: _passwordController,
                ),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                  child: Container(
                    height: 36,
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        color: Colors.blue),
                    child: const Text('Sign Up'),
                  ),
                  onTap: () {
                    ref
                        .read(signInFormStateProvider.notifier)
                        .signUpWithEmailAndPasswordPressed();
                  },
                ),
                Flexible(
                  child: Container(),
                  flex: 2,
                ),
                Row(
                  children: [
                    const Text("Already have an account?"),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      child: const Text(
                        "Sign In",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        AutoRouter.of(context).navigateBack();
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

//   Future<void> _signUp() async {
//     if (_formKey.currentState!.validate()) {
//       String result = await AuthMethods.signUpWithEmailAndPassword(
//           _emailController.text, _passwordController.text);
//       if (result == "success") {
//         _emailController.clear();
//         _passwordController.clear();
//         showSnackBar(context, "Sign up successfully");
//         await AuthMethods.signOut();
//         await Future.delayed(const Duration(seconds: 3), () {
//           AutoRouter.of(context).replace(LoginScreenRoute(
//             email: _emailController.text,
//             password: _passwordController.text,
//           ));
//         });
//       } else {
//         ScaffoldMessenger.of(context)
//             .showSnackBar(SnackBar(content: Text(result)));
//       }
//     }
//   }
// }
}
