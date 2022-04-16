import 'package:auto_route/auto_route.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../routes/app_router.dart';


class MyConvexAppBar extends ConsumerWidget {
  const MyConvexAppBar({
    Key? key,
    required this.currentScreen,
  }) : super(key: key);
  final int currentScreen;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ConvexAppBar(
      items: const [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.people, title: 'Dentists'),
        TabItem(icon: Icons.calendar_today, title: 'Appointment'),
        TabItem(icon: Icons.account_circle, title: 'Profile'),
      ],
      initialActiveIndex: currentScreen,
      onTap: (ref.watch(isFirstTimeSignInProvider))
          ? null
          : (int i) async{
              switch (i) {
                case 0:{
                   // ref.read(serviceListStateProvider.notifier).fetchData();
                  AutoRouter.of(context).replace(const HomeScreenRoute());
                }

                  break;
                // case 1:
                //   AutoRouter.of(context).replace(const DentistsScreenRoute());
                //   break;
                // case 2:
                //   AutoRouter.of(context)
                //       .replace(const AppointmentsScreenRoute());
                //   break;
                // case 3:
                //   AutoRouter.of(context)
                //       .replace(const ProfileSettingScreenRoute());
                  break;
              }
            },
    );
  }
}
