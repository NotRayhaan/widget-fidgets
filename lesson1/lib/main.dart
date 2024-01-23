import 'package:flutter/material.dart';
import 'package:lesson1/src/routes.dart';
import 'package:lesson1/src/ui/layout/my_layout.dart';
import 'package:lesson1/src/ui/screen/my_screen.dart';
import 'package:lesson1/src/ui/view/login.dart';

void main() {
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
      screen: MyScreen(
        view: LoginView(), // gorouter
      ),
    );
  }
}
