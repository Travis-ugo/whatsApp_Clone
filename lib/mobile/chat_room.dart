import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost/utils/data.dart';
import 'mobile_text_field.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({Key? key, required this.chats}) : super(key: key);
  final Chats chats;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
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
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(width: 0),
            CircleAvatar(
              backgroundImage: AssetImage(chats.profilepicture),
            ),
            const SizedBox(width: 10),
            Text(
              chats.name,
              style: const TextStyle(fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ),
      body: MobileTextField(
        chats: chats,
      ),
    );
  }
}
