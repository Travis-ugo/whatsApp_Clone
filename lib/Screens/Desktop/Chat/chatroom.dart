import 'package:flutter/material.dart';
import '../../../Utils/widget_imports.dart';

import 'messages.dart';

class ChatRooom extends StatelessWidget {
  const ChatRooom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Expanded(
          flex: 8,
          child: Image(
            image: AssetImage('assets/dark.png'),
            fit: BoxFit.fill,
          ),
        ),
        Column(
          children: const [
            Expanded(
              flex: 8,
              child: Message(),
            ),
            TextField(),
          ],
        ),
      ],
    );
  }
}

class TextField extends StatelessWidget {
  const TextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _messageController = TextEditingController();
    return Positioned(
      bottom: 0.0,
      child: Container(
        height: 60,
        color: const Color(0xFF2D3333),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Icon(CupertinoIcons.smiley, color: greyColor),
            const SizedBox(width: 20),
            Icon(Icons.attach_file_rounded, color: greyColor),
            const SizedBox(width: 20),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFF4B5353),
                ),
                height: 42,
                child: Center(
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    autofocus: true,
                    controller: _messageController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      hintText: 'Type a message',
                      hintStyle: TextStyle(
                        color: greyColor,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                CupertinoIcons.mic,
                color: greyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
