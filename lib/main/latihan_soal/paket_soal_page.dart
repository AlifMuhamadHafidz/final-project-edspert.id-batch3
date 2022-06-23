import 'package:flutter/material.dart';
import 'package:project_final/constants.dart';

class PaketSoalPage extends StatefulWidget {
  const PaketSoalPage({Key? key}) : super(key: key);
  static String route = 'paket_soal_page';

  @override
  State<PaketSoalPage> createState() => _PaketSoalPageState();
}

class _PaketSoalPageState extends State<PaketSoalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Paket Soal'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 12,
            ),
            Text(
              'Pilih Paket Soal',
              style: titleText12,
            ),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                children: [
                  PaketSoalWidget(),
                  PaketSoalWidget(),
                  PaketSoalWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaketSoalWidget extends StatelessWidget {
  const PaketSoalWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      // margin: const EdgeInsets.all(13.0),
      padding: const EdgeInsets.all(13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue.withOpacity(0.2)),
            padding: EdgeInsets.all(12),
            child: Image.asset(
              'assets/note_icon.png',
              width: 14,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Trigonometri',
            style: titleText12,
          ),
          Text(
            '0/0 Paket Soal',
            style: subtitleText8,
          ),
        ],
      ),
    );
  }
}
