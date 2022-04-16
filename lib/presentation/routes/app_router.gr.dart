// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashScreen());
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: LoginScreen(
              key: args.key, email: args.email, password: args.password));
    },
    SignUpScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SignUpScreen());
    },
    HomeScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const HomeScreen(),
          transitionsBuilder: TransitionsBuilders.noTransition,
          opaque: true,
          barrierDismissible: false);
    },
    ProfileSettingScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ProfileSettingScreen(),
          transitionsBuilder: TransitionsBuilders.noTransition,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashScreenRoute.name, path: '/'),
        RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        RouteConfig(SignUpScreenRoute.name, path: '/sign-up-screen'),
        RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        RouteConfig(ProfileSettingScreenRoute.name,
            path: '/profile-setting-screen')
      ];
}

/// generated route for
/// [SplashScreen]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [LoginScreen]
class LoginScreenRoute extends PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({Key? key, String? email, String? password})
      : super(LoginScreenRoute.name,
            path: '/login-screen',
            args: LoginScreenRouteArgs(
                key: key, email: email, password: password));

  static const String name = 'LoginScreenRoute';
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({this.key, this.email, this.password});

  final Key? key;

  final String? email;

  final String? password;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key, email: $email, password: $password}';
  }
}

/// generated route for
/// [SignUpScreen]
class SignUpScreenRoute extends PageRouteInfo<void> {
  const SignUpScreenRoute()
      : super(SignUpScreenRoute.name, path: '/sign-up-screen');

  static const String name = 'SignUpScreenRoute';
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [ProfileSettingScreen]
class ProfileSettingScreenRoute extends PageRouteInfo<void> {
  const ProfileSettingScreenRoute()
      : super(ProfileSettingScreenRoute.name, path: '/profile-setting-screen');

  static const String name = 'ProfileSettingScreenRoute';
}
