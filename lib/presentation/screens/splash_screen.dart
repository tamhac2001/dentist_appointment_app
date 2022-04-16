import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/utils/providers.dart';
import '../routes/app_router.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    return Scaffold(
        body: authState.when(
      initial: () {
        return const Center(child: CircularProgressIndicator());
      },
      unauthenticated: () {
        AutoRouter.of(context).push(LoginScreenRoute());
        return;
      },
      authenticated: (user) {
        return FutureBuilder(
          future: ref.read(serviceListStateProvider.notifier).fetchData(),
          builder: (context, snapshot) {
            AutoRouter.of(context).navigate(const HomeScreenRoute());
            return Container();
          },
        );
      },
    ));
  }
}
