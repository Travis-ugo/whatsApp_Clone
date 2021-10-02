import 'package:flutter/material.dart';
import 'package:lost/widgets/texbutton.dart';

// this widget holds all page naming when taped animates to the named page
// using PageView widget, makes it easier to animate to the index page.

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
            0,
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
            1,
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
            2,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          );
        },
        text: 'Calls',
      ),
    ],
  );
}
