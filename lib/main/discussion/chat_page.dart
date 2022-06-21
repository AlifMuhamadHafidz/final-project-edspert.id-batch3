import 'package:flutter/material.dart';
import 'package:project_final/constants.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 20),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          backgroundColor: primaryColor,
          centerTitle: true,
          title: Text(
            'Diskusi Soal',
            style: diskusiSoalText,
          ),
        ),
      ),
      body: Column(
        children: [Text('CHAT')],
      ),
    );
  }
}
