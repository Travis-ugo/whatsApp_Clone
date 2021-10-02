import 'package:flutter/material.dart';
import 'package:lost/Utils/widget_imports.dart';

// this widget helps seperate sent message
// and replies from chatroom.

class Messages extends StatelessWidget {
  const Messages({
    Key? key,
    required this.chats,
  }) : super(key: key);
  final ChatsInfo chats;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: 13,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              MessageBox(
                color: const Color(0xFFD3FEC5),
                leftHand: 15,
                rightHand: 0,
                align: Alignment.topRight,
                text: profile.firstMessage,
                chats: chats,
              ),
              MessageBox(
                color: const Color(0xFFF5F5F5),
                leftHand: 0,
                rightHand: 15,
                align: Alignment.topLeft,
                text: chats.firstMessage,
                chats: chats,
              ),
              MessageBox(
                color: const Color(0xFFD3FEC5),
                leftHand: 15,
                rightHand: 0,
                align: Alignment.topRight,
                text: profile.firstMessage,
                chats: chats,
              ),
              MessageBox(
                color: const Color(0xFFF5F5F5),
                leftHand: 0,
                rightHand: 15,
                align: Alignment.topLeft,
                text: chats.firstMessage,
                chats: chats,
              ),
            ],
          ),
        );
      },
    );
  }
}

// this widget contains sent and recieved messages
// in a decorated container.

class MessageBox extends StatelessWidget {
  const MessageBox({
    Key? key,
    required this.color,
    required this.rightHand,
    required this.leftHand,
    required this.align,
    required this.text,
    required this.chats,
  }) : super(key: key);
  final AlignmentGeometry align;
  final double rightHand;
  final double leftHand;
  final Color color;
  final String text;
  final ChatsInfo chats;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: align,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 200,
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(leftHand),
              topRight: Radius.circular(rightHand),
              bottomRight: const Radius.circular(15),
              bottomLeft: const Radius.circular(15),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text,
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.grey[800], fontSize: 14),
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 3),
              Text(
                chats.time,
                style: TextStyle(
                  fontSize: 9,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
