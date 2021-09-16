import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost/Desktop/desktop_message.dart';

class ChatRoomWeb extends StatelessWidget {
  const ChatRoomWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Expanded(
          flex: 8,
          child: WebMessages(),
        ),
        TextFieldWeb(),
      ],
    );
  }
}

class TextFieldWeb extends StatelessWidget {
  const TextFieldWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    return Positioned(
      bottom: 0.0,
      child: Container(
        height: 60,
        color: Colors.green,
        child: Row(
          children: [
            const SizedBox(width: 15),
            const Icon(CupertinoIcons.smiley),
            const SizedBox(width: 15),
            const Icon(Icons.attach_file_rounded),
            const SizedBox(width: 15),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                height: 42,
                child: TextFormField(
                  autofocus: true,
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    hintText: 'Type a message',
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(CupertinoIcons.mic),
            ),
          ],
        ),
      ),
    );
  }
}
