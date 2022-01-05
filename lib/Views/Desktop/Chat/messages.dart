import 'package:flutter/material.dart';
import 'package:lost/Utils/colors.dart';

const leftHandMessage = Color(0xFF128c7e);
const rightHandMessage = Color(0xFF2D3333);

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController ontroller = ScrollController(
      initialScrollOffset: 1,
      keepScrollOffset: true,
    );
    return ListView.builder(
      controller: ontroller,
      reverse: true,
      itemCount: 13,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: const [
              MessageBox(
                leftHand: 10,
                rightHand: 0,
                align: Alignment.topRight,
                color: leftHandMessage,
              ),
              MessageBox(
                leftHand: 0,
                rightHand: 10,
                align: Alignment.topLeft,
                color: rightHandMessage,
              ),
              MessageBox(
                leftHand: 10,
                rightHand: 0,
                align: Alignment.topRight,
                color: leftHandMessage,
              ),
              MessageBox(
                leftHand: 0,
                rightHand: 10,
                align: Alignment.topLeft,
                color: rightHandMessage,
              ),
            ],
          ),
        );
      },
    );
  }
}

class MessageBox extends StatelessWidget {
  const MessageBox({
    Key? key,
    required this.rightHand,
    required this.leftHand,
    required this.align,
    required this.color,
  }) : super(key: key);
  final AlignmentGeometry align;
  final double rightHand;
  final double leftHand;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: align,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 400,
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(leftHand),
              topRight: Radius.circular(rightHand),
              bottomRight: const Radius.circular(10),
              bottomLeft: const Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Center(
                child: Text(
                  'Woolha dot com Woolha dot com Woolha dot com Woolha Woolha dot com Woolha dot com Woolha dot com Woolha dot com Woolha dot com Woolha dot com Woolha dot com Woolha dot com Woolha dot com',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  overflow: TextOverflow.visible,
                ),
              ),
              Text(
                '90 : 03 Pm',
                style: TextStyle(
                  fontSize: 12,
                  color: colorize.greyColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
