import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_final/constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(
      Duration(seconds: 3),
      (() => Navigator.pushReplacementNamed(context, '/login')),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Container(
          width: 159,
          height: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/splash_image.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
