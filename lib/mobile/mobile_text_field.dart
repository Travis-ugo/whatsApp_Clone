import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost/utils/data.dart';
import 'package:lost/utils/item_list.dart';

import 'mobile_message.dart';

class MobileTextField extends StatelessWidget {
  const MobileTextField({
    Key? key,
    required this.chats,
  }) : super(key: key);
  final Chats chats;

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: SizedBox(
            child: MobileMessages(
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
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 42,
                  child: TextFormField(
                    textAlign: TextAlign.start,
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
              const SizedBox(width: 8),
              Container(
                child: const Icon(Icons.mic),
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: Colors.green.shade300,
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
