// this widget contains sent and recieved messages
// in a decorated container.

import 'package:flutter/material.dart';
import 'package:lost/Utils/widget_imports.dart';

class MessageFlexBox extends StatelessWidget {
  const MessageFlexBox({
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
