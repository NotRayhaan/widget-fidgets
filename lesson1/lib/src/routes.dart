import 'package:go_router/go_router.dart';
import 'package:lesson1/src/ui/layout/my_layout.dart';
import 'package:lesson1/src/ui/screen/my_screen.dart';
import 'package:lesson1/src/ui/view/login.dart';
import 'package:lesson1/src/ui/view/register.dart';

final router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) => const MainLayout(
            screen: MyScreen(
              view: LoginView(),
            ),
          )),
  GoRoute(
      path: '/register',
      builder: (context, state) => const MainLayout(
            screen: MyScreen(
              view: RegisterView(),
            ),
          ))
]);
