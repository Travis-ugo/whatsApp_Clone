import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lost/Desktop/desktop_message.dart';

class ChatRoomWeb extends StatelessWidget {
  const ChatRoomWeb({Key? key}) : super(key: key);

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
              child: WebMessages(),
            ),
            TextFieldWeb(),
          ],
        ),
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
        color: const Color(0xFF2D3333),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Icon(CupertinoIcons.smiley, color: Colors.grey[400]),
            const SizedBox(width: 20),
            Icon(Icons.attach_file_rounded, color: Colors.grey[400]),
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
                    controller: _passwordController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      hintText: 'Type a message',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
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
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
