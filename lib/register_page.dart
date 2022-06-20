import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

enum Gender { male, female }

class _RegisterPageState extends State<RegisterPage> {
  String gender = 'Laki - laki';
  List<String> classSlta = ['10', '11', '12'];
  String selectedClass = '10';

  final emailController = TextEditingController();
  final fullNameController = TextEditingController();
  final schoolNameController = TextEditingController();

  onTapGender(Gender genderInput) {
    if (genderInput == Gender.male) {
      gender = 'Laki - laki';
    } else {
      gender = 'Perempuan';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Yuk isi data diri',
            style: largeText20,
          ),
        ),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0, left: 12, right: 12),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(46),
                    ),
                    fixedSize: Size(double.infinity, 64)),
                onPressed: () {
                  print(emailController.text);
                  Navigator.pushNamed(context, '/mainpage');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'DAFTAR',
                      style: daftarText,
                    ),
                  ],
                )),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                RegisterTextField(
                  controller: emailController,
                  title: 'Email',
                  hintText: 'contoh : emailanda@gmail.com',
                ),
                SizedBox(
                  height: 24,
                ),
                RegisterTextField(
                  controller: fullNameController,
                  title: 'Nama Lengkap',
                  hintText: 'contoh : Bambang',
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Jenis Kelamin',
                  style: bioText,
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9.02),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: gender == 'Laki - laki'
                                ? primaryColor
                                : Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(
                                width: 1,
                                color: Color(0xFFD6D6D6),
                              ),
                            ),
                            fixedSize: Size(139, 45),
                          ),
                          onPressed: () {
                            onTapGender(Gender.male);
                          },
                          child: Text(
                            'Laki - Laki',
                            style: genderText.copyWith(
                                color: gender == 'Laki - laki'
                                    ? Colors.white
                                    : genderTextColor),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9.02),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: gender == 'Perempuan'
                                ? primaryColor
                                : Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(
                                width: 1,
                                color: Color(0xFFD6D6D6),
                              ),
                            ),
                            fixedSize: Size(139, 45),
                          ),
                          onPressed: () {
                            onTapGender(Gender.female);
                          },
                          child: Text(
                            'Perempuan',
                            style: genderText.copyWith(
                                color: gender == 'Perempuan'
                                    ? Colors.white
                                    : genderTextColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  'Kelas',
                  style: bioText,
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    border: Border.all(
                      color: greyBorder,
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        value: selectedClass,
                        items: classSlta
                            .map(
                              (e) => DropdownMenuItem<String>(
                                child: Text(e),
                                value: e,
                              ),
                            )
                            .toList(),
                        onChanged: (String? val) {
                          selectedClass = val!;
                          setState(() {});
                        }),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RegisterTextField(
                  controller: schoolNameController,
                  title: 'Nama Sekolah',
                  hintText: 'contoh : SMAN 1 Pemali',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterTextField extends StatelessWidget {
  const RegisterTextField({
    Key? key,
    required this.title,
    required this.hintText,
    this.controller,
  }) : super(key: key);
  final String title;
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: bioText,
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            border: Border.all(
              color: greyBorder,
            ),
          ),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: hintTextColor),
            ),
          ),
        ),
      ],
    );
  }
}
