import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/utils/providers.dart';
import '../../domain/auth/auth_failure.dart';
import '../routes/app_router.dart';
import '../widgets/widgets.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key, this.email, this.password}) : super(key: key);
  final String? email, password;

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    if (widget.email != null && widget.password != null) {
      _emailController.text = widget.email!;
      _passwordController.text = widget.password!;
    }
  }

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
                      )), (_) {
                    AutoRouter.of(context).navigate(const SplashScreenRoute());

              }));
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
                  onChanged: (value) {
                    ref
                        .read(signInFormStateProvider.notifier)
                        .passwordChanged(value);
                  },
                  validator: (_) {
                    return signInFormState.password.value.fold(
                        (failure) => failure.maybeWhen(
                            shortPassword: (_) =>
                                'Password must at least 6 characters long',
                            orElse: () => null),
                        (_) => null);
                  },
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
                      child: const Text('Sign In'),
                    ),
                    onTap: () {
                      ref
                          .read(signInFormStateProvider.notifier)
                          .signInWithEmailAndPasswordPressed();
                    }),
                if (signInFormState.isSubmitting) ...[
                  const SizedBox(
                    height: 8.0,
                  ),
                  const LinearProgressIndicator(),
                ],
                Flexible(
                  child: Container(),
                  flex: 2,
                ),
                Row(
                  children: [
                    const AutoSizeText(
                      "Don't have an account?",
                      maxLines: 1,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      child: const AutoSizeText(
                        "Sign Up",
                        maxLines: 1,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        AutoRouter.of(context).push(const SignUpScreenRoute());
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

// Future<void> _signIn() async {
//   if (_emailController.text == 'admin123' &&
//       _passwordController.text == 'admin123') {
//     print('admin');
//     AutoRouter.of(context).push(const AdminScreenRoute());
//   } else {
//     print('a');
//     if (_formKey.currentState!.validate()) {
//       final signInResult = await AuthMethods.signInWithEmailAndPassword(
//           _emailController.text, _passwordController.text);
//       if (signInResult.item1 == "success" && signInResult.item2 != null) {
//         if (AuthMethods.checkIfEmailVerified()) {
//           ref
//               .read(patientProvider.notifier)
//               .state = signInResult.item2!;
//           if (await AuthMethods.isFirstTimeSignIn()) {
//             await DatabaseMethods.updatePatientToFirestore(
//                 ref.read(patientProvider));
//             ref
//                 .read(isFirstTimeSignInProvider.notifier)
//                 .state = true;
//             AutoRouter.of(context)
//                 .navigate(const ProfileSettingScreenRoute());
//           } else {
//             AutoRouter.of(context).navigate(const HomeScreenRoute());
//           }
//         } else {
//           showSnackBar(context, "Email is not verified");
//         }
//       } else {
//         showSnackBar(context, signInResult.item1);
//       }
//       print(ref.read(patientProvider).toString());
//     }
//   }
// }
}
