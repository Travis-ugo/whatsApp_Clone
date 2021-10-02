// Text Button to animate to named route or index page from PageView widget

import 'package:flutter/material.dart';

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
