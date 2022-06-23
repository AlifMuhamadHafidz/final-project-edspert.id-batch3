import 'package:flutter/material.dart';
import 'package:project_final/constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Akun Saya',
          style: profileText,
        ),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Edit',
                style: editProfileText,
              ))
        ],
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 28, bottom: 60, left: 15, right: 15),
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(9),
                  bottomRight: Radius.circular(9),
                )),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama User',
                        style: profileText,
                      ),
                      Text(
                        'Nama Sekolah User',
                        style: subtitleSekolahText,
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/avatar_icon.png',
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 7, color: Colors.black.withOpacity(0.25))
                ]),
            margin: EdgeInsets.symmetric(vertical: 18, horizontal: 13),
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Identitas Diri',
                  style: identitasText,
                ),
                SizedBox(
                  height: 28,
                ),
                Text(
                  'Nama Lengkap',
                  style: subtitleIdentitasText,
                ),
                Text(
                  'nama',
                  style: titleIdentitasText,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Email',
                  style: subtitleIdentitasText,
                ),
                Text(
                  'email',
                  style: titleIdentitasText,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Jenis Kelamin',
                  style: subtitleIdentitasText,
                ),
                Text(
                  'jk',
                  style: titleIdentitasText,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Kelas',
                  style: subtitleIdentitasText,
                ),
                Text(
                  'K',
                  style: titleIdentitasText,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Sekolah',
                  style: subtitleIdentitasText,
                ),
                Text(
                  'SMA',
                  style: titleIdentitasText,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 13),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 7, color: Colors.black.withOpacity(0.25))
                ]),
            child: ListTile(
                title: Transform.translate(
                  offset: Offset(-25, 0),
                  child: Text(
                    'Keluar',
                    style: exitText,
                  ),
                ),
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.red,
                )),
          ),
        ],
      ),
    );
  }
}
