import 'package:go_router/go_router.dart';
import 'package:lesson1/src/ui/layout/my_layout.dart';
import 'package:lesson1/src/ui/screen/authenticate.dart';
import 'package:lesson1/src/ui/screen/landing.dart';
import 'package:lesson1/src/ui/view/forgot_password.dart';
import 'package:lesson1/src/ui/view/home.dart';
import 'package:lesson1/src/ui/view/login.dart';
import 'package:lesson1/src/ui/view/register.dart';

final router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) => const MainLayout(
            screen: AuthScreen(
              view: LoginView(),
            ),
          )),
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
          ))
]);
