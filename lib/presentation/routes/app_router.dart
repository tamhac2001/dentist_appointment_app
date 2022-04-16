import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/profile_setting_screen.dart';
import '../screens/sign_up_screen.dart';
import '../screens/splash_screen.dart';


part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: LoginScreen),
    AutoRoute(page: SignUpScreen),
    CustomRoute(
        page: HomeScreen, transitionsBuilder: TransitionsBuilders.noTransition),
    // CustomRoute(
    //     page: DentistsScreen,
    //     transitionsBuilder: TransitionsBuilders.noTransition),
    // CustomRoute(
    //     page: AppointmentsScreen,
    //     transitionsBuilder: TransitionsBuilders.noTransition),
    CustomRoute(
        page: ProfileSettingScreen,
        transitionsBuilder: TransitionsBuilders.noTransition),
    // AutoRoute(page: AdminScreen, ),
    // AutoRoute(page: AddDentistScreen),
    // AutoRoute(page: AddServiceScreen),
  ],
)
class AppRouter extends _$AppRouter {}
