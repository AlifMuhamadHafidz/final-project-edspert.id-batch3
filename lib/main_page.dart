import 'package:flutter/material.dart';
import 'package:project_final/main/discussion/chat_page.dart';
import 'package:project_final/main/latihan_soal/home_page.dart';
import 'package:project_final/main/profile/profile_page.dart';
import 'constants.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static String route = "main_page";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _pc = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        child: Image.asset(
          'assets/discuss_icon.png',
          width: 30,
        ),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ChatPage()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: backgroundColor,
      bottomNavigationBar: _buildBottomNavigation(),
      body: PageView(
        controller: _pc,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomePage(),
          ProfilePage(),
        ],
      ),
    );
  }

  Container _buildBottomNavigation() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Colors.black.withOpacity(0.06))
      ]),
      child: BottomAppBar(
          color: Colors.white,
          child: Container(
            height: 57,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          index = 0;
                          _pc.animateToPage(index,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                          setState(() {});
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/home_icon.png',
                              height: 20,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Home',
                              style: selectedBottomText,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Material(
                      child: InkWell(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Diskusi Soal',
                              style: unselectedBottomText,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          index = 1;
                          _pc.animateToPage(index,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                          setState(() {});
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/unselected_profile_icon.png',
                              height: 20,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Profile',
                              style: unselectedBottomText,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
