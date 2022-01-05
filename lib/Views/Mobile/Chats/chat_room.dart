import 'package:flutter/material.dart';
import 'package:lost/Utils/widget_imports.dart';

import 'Widgets/message_form_field.dart';

// this widget contains all sent and recieved messages

class ChatRoom extends StatelessWidget {
  const ChatRoom({Key? key, required this.chats}) : super(key: key);
  final ChatsInfo chats;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xFF128c7e),
        automaticallyImplyLeading: false,
        actions: const [
          Icon(
            CupertinoIcons.video_camera_solid,
            size: 25,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.call,
            size: 20,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.more_vert,
            size: 20,
          ),
          SizedBox(width: 10),
        ],
        title: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 18,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(width: 0),
            CircleAvatar(
              backgroundImage: AssetImage(chats.profilepicture),
              radius: 18,
            ),
            const SizedBox(width: 10),
            Text(
              chats.name,
              style: const TextStyle(fontWeight: FontWeight.w100, fontSize: 16),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: MessageBoxField(
          chats: chats,
        ),
      ),
    );
  }
}
