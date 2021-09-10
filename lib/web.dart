import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost/screens/chat_room.dart';
import 'package:lost/screens/chats.dart';

class WebChat extends StatelessWidget {
  const WebChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mad stuffs'),
      ),
      body: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 3 - 100,
            child: Column(
              children: [
                Field(
                  child: TextFormField(
                    //  maxLength: 10,
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      prefixIcon: Icon(CupertinoIcons.lock, size: 15),
                      suffixIcon: Icon(CupertinoIcons.eye_slash, size: 15),
                      hintText: 'Password',
                    ),
                    validator: (values) {
                      if (values!.length < 4) {
                        return ' password too short';
                      }
                      if (values.isEmpty) {
                        return 'Enter a valid password to continue';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0, color: Color(0xFFDFDFDF)),
                        right: BorderSide(width: 1.0, color: Color(0xFF7F7F7F)),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height - 100,
                    child: const Chats()),
              ],
            ),
          ),
          Container(
            child: const ChatRoom(),
          ),
        ],
      ),
    );
  }
}

class Field extends StatelessWidget {
  const Field({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 40,
      width: MediaQuery.of(context).size.width / 3 - 150,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(60),
        border: Border.all(
          width: 1.5,
          color: Colors.deepPurpleAccent,
        ),
      ),
      child: Center(child: child),
    );
  }
}
