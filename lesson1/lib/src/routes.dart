import 'package:go_router/go_router.dart';
import 'package:lesson1/src/ui/layout/my_layout.dart';
import 'package:lesson1/src/ui/screen/authenticate.dart';
import 'package:lesson1/src/ui/screen/landing.dart';
import 'package:lesson1/src/ui/view/compass.dart';
import 'package:lesson1/src/ui/view/dashboard.dart';
import 'package:lesson1/src/ui/view/forgot_password.dart';
import 'package:lesson1/src/ui/view/home.dart';
import 'package:lesson1/src/ui/view/login.dart';
import 'package:lesson1/src/ui/view/notifications.dart';
import 'package:lesson1/src/ui/view/register.dart';
import 'package:lesson1/src/ui/view/settings.dart';

final router = GoRouter(routes: [
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
  GoRoute(
      path: '/home',
      builder: (context, state) => const MainLayout(
            screen: LandingScreen(
              view: HomeView(),
            ),
          )),
  GoRoute(
      path: '/dashboard',
      builder: (context, state) => const MainLayout(
            screen: LandingScreen(
              view: DashboardView(),
            ),
          )),
  GoRoute(
      path: '/compass',
      builder: (context, state) => const MainLayout(
            screen: LandingScreen(
              view: CompassView(),
            ),
          )),
  GoRoute(
      path: '/notifications',
      builder: (context, state) => const MainLayout(
            screen: LandingScreen(
              view: NotificationsView(),
            ),
          )),
  GoRoute(
      path: '/settings',
      builder: (context, state) => const MainLayout(
            screen: LandingScreen(
              view: SettingsView(),
            ),
          ))
]);
