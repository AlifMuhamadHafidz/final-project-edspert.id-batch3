import 'package:flutter/material.dart';
import 'package:project_final/constants.dart';
import 'package:project_final/main/latihan_soal/home_page.dart';
import 'package:project_final/main/latihan_soal/paket_soal_page.dart';

class MapelPage extends StatelessWidget {
  const MapelPage({Key? key}) : super(key: key);
  static String route = 'mapel_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text(
            'Pilih Pelajaran',
            style: appBarText,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: ListView.builder(itemBuilder: (context, index) {
            return GestureDetector(
                onTap: (() {
                  Navigator.of(context).pushNamed(PaketSoalPage.route);
                }),
                child: MapelWidget());
          }),
        ));
  }
}
