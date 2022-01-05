import 'package:flutter/material.dart';
import 'package:lost/Utils/widget_imports.dart';

import '../message_body.dart.dart';

// this widget uses a TextFormField for typing messages
// to be sent to the chat room

class MessageBoxField extends StatelessWidget {
  const MessageBoxField({
    Key? key,
    required this.chats,
  }) : super(key: key);
  final ChatsInfo chats;

  @override
  Widget build(BuildContext context) {
    final _textController = TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: SizedBox(
            child: Messages(
              chats: chats,
            ),
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Container(
          height: 55,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  width: 400,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 42,
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.grey[800]),
                    autofocus: true,
                    controller: _textController,
                    decoration: InputDecoration(
                      icon: Icon(
                        CupertinoIcons.smiley,
                        color: colorize.greyColor,
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      hintText: 'Message',
                      hintStyle: TextStyle(color: colorize.greyColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                child: Icon(
                  Icons.mic,
                  color: Colors.grey[300],
                ),
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: const Color(0xFF128c7e),
                  borderRadius: BorderRadius.circular(100),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
