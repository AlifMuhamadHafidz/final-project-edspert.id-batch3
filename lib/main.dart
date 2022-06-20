import 'package:flutter/material.dart';
import 'package:project_final/login_page.dart';
import 'package:project_final/main_page.dart';

import 'package:project_final/splash_page.dart';

import 'register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/mainpage': (context) => MainPage(),
      },
    );
  }
}