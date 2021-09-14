import 'package:flutter/material.dart';
import 'package:lost/utils/data.dart';

class MobileMessages extends StatelessWidget {
  const MobileMessages({
    Key? key,
    required this.chats,
  }) : super(key: key);
  final Chats chats;

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
              MobileMessageBox(
                color: Colors.black38,
                leftHand: 20,
                rightHand: 0,
                align: Alignment.topRight,
                text: profile.firstMessage,
              ),
              MobileMessageBox(
                color: Colors.teal,
                leftHand: 0,
                rightHand: 20,
                align: Alignment.topLeft,
                text: chats.firstMessage,
              ),
              MobileMessageBox(
                color: Colors.black38,
                leftHand: 20,
                rightHand: 0,
                align: Alignment.topRight,
                text: profile.firstMessage,
              ),
              MobileMessageBox(
                color: Colors.teal,
                leftHand: 0,
                rightHand: 20,
                align: Alignment.topLeft,
                text: chats.firstMessage,
              ),
            ],
          ),
        );
      },
    );
  }
}

class MobileMessageBox extends StatelessWidget {
  const MobileMessageBox({
    Key? key,
    required this.color,
    required this.rightHand,
    required this.leftHand,
    required this.align,
    required this.text,
  }) : super(key: key);
  final AlignmentGeometry align;
  final double rightHand;
  final double leftHand;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: align,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 200,
        ),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(leftHand),
              topRight: Radius.circular(rightHand),
              bottomRight: const Radius.circular(20),
              bottomLeft: const Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('909090909090', style: TextStyle(fontSize: 12)),
              const SizedBox(height: 10),
              Text(
                text,
                textAlign: TextAlign.start,
                style: const TextStyle(color: Colors.white, fontSize: 14),
                overflow: TextOverflow.visible,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
