import 'package:flutter/material.dart';
import 'package:lost/main.dart';

bottomBar(PageController controller) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(width: 10),
      IconButton(
        icon: Icon(
          Icons.local_see,
          color: Colors.grey[100],
        ),
        onPressed: () {
          controller.animateToPage(
            0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          );
        },
      ),
      const SizedBox(width: 20),
      TexButton(
        callback: () {
          controller.animateToPage(
            1,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          );
        },
        text: 'Chats',
      ),
      const SizedBox(width: 50),
      TexButton(
        callback: () {
          controller.animateToPage(
            2,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          );
        },
        text: 'Status',
      ),
      const SizedBox(width: 50),
      TexButton(
        callback: () {
          controller.animateToPage(
            3,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          );
        },
        text: 'Calls',
      ),
    ],
  );
}

class TexButton extends StatelessWidget {
  const TexButton({
    Key? key,
    required this.callback,
    required this.text,
  }) : super(key: key);
  final String text;
  final void Function() callback;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w100,
          fontSize: 16,
          color: Colors.grey[100],
        ),
      ),
    );
  }
}