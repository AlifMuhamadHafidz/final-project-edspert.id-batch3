import 'package:flutter/material.dart';
import 'package:project_final/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundGrayscale,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Login',
                  style: titleText20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/login_image.png'),
            SizedBox(
              height: 35,
            ),
            Text(
              'Selamat Datang',
              style: titleText22,
            ),
            Text(
              'Selamat Datang di Aplikasi Widya Edu Aplikasi Latihan dan Konsultasi Soal',
              textAlign: TextAlign.center,
              style: subtitleText14,
            ),
            Spacer(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(
                            color: Color(0xFF01B1AF),
                          )),
                      fixedSize: Size(double.infinity, 50)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/google_icon.png'),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Masuk dengan Google',
                        style: googleText,
                      ),
                    ],
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      fixedSize: Size(double.infinity, 50)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/apple_icon.png'),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Masuk dengan Apple ID',
                        style: appleText,
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
