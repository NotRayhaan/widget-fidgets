import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_app/src/routes.dart';
import 'package:wallet_app/src/ui/layout/my_layout.dart';
import 'package:wallet_app/src/ui/screen/authenticate.dart';
import 'package:wallet_app/src/ui/view/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        dividerColor: Colors.transparent,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      screen: AuthScreen(
        view: LoginView(),
      ),
    );
  }
}
