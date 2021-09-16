import 'package:flutter/material.dart';

class WebMessages extends StatelessWidget {
  const WebMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                color: Color(0xFF128c7e),
              ),
              MessageBox(
                leftHand: 0,
                rightHand: 10,
                align: Alignment.topLeft,
                color: Color(0xFF2D3333),
              ),
              MessageBox(
                leftHand: 10,
                rightHand: 0,
                align: Alignment.topRight,
                color: Color(0xFF128c7e),
              ),
              MessageBox(
                leftHand: 0,
                rightHand: 10,
                align: Alignment.topLeft,
                color: Color(0xFF2D3333),
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
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
