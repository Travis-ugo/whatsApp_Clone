import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mobile_text_field.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        automaticallyImplyLeading: false,
        actions: const [
          Icon(Icons.video_camera_back),
          SizedBox(width: 10),
          Icon(Icons.call),
          SizedBox(width: 10),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            const SizedBox(width: 0),
            const CircleAvatar(
              backgroundImage: AssetImage("assets/1.jpeg"),
            ),
            const SizedBox(width: 10),
            const Text(
              'Ababa',
              style: TextStyle(fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ),
      body: const MobileTextField(),
    );
  }
}
