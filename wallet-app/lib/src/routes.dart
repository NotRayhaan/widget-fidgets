import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/src/ui/layout/my_layout.dart';
import 'package:wallet_app/src/ui/screen/authenticate.dart';
import 'package:wallet_app/src/ui/screen/landing.dart';
import 'package:wallet_app/src/ui/view/compass.dart';
import 'package:wallet_app/src/ui/view/dashboard.dart';
import 'package:wallet_app/src/ui/view/forgot_password.dart';
import 'package:wallet_app/src/ui/view/home.dart';
import 'package:wallet_app/src/ui/view/login.dart';
import 'package:wallet_app/src/ui/view/notifications.dart';
import 'package:wallet_app/src/ui/view/register.dart';
import 'package:wallet_app/src/ui/view/settings.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(navigatorKey: _rootNavigatorKey, routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const MainLayout(
      screen: AuthScreen(
        view: LoginView(),
      ),
    ),
  ),
  GoRoute(
      path: '/authenticate/register',
      builder: (context, state) => const MainLayout(
            screen: AuthScreen(
              view: RegisterView(),
            ),
          )),
  GoRoute(
      path: '/authenticate/forgot',
      builder: (context, state) => const MainLayout(
            screen: AuthScreen(
              view: ForgotPasswordView(),
            ),
          )),
  ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => MainLayout(screen: LandingScreen(view: child)),
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomeView(),
        ),
        GoRoute(
          path: '/dashboard',
          builder: (context, state) => const DashboardView(),
        ),
        GoRoute(
          path: '/compass',
          builder: (context, state) => const CompassView(),
        ),
        GoRoute(
          path: '/notifications',
          builder: (context, state) => const NotificationsView(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsView(),
        )
      ])
]);
