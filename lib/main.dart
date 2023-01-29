import 'package:flutter/material.dart';
import 'package:form_steps_navigator/home_page.dart';
import 'package:form_steps_navigator/register/register_page.dart';
import 'package:form_steps_navigator/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => const SplashPage(),
        '/home': (_) => const HomePage(),
        '/register': (_) => const RegisterPage(),
      },
    );
  }
}