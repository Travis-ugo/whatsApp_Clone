import 'package:flutter/material.dart';
import 'package:lost/Utils/widget_imports.dart';

class CallFrame extends StatelessWidget {
  const CallFrame({Key? key, required this.chats}) : super(key: key);
  final ChatsInfo chats;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF128c7e),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage(chats.profilepicture),
            ),
            const SizedBox(height: 15),
            Text(
              chats.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: colorize.greyColor,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'calling',
              style: TextStyle(
                color: colorize.whiteColor,
              ),
            ),
            const SizedBox(height: 550),
            Expanded(
              flex: 4,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.volume_up,
                        color: colorize.whiteColor,
                        size: 30,
                      ),
                      Icon(
                        CupertinoIcons.videocam_fill,
                        color: colorize.whiteColor,
                        size: 30,
                      ),
                      Icon(
                        Icons.mic_off,
                        color: colorize.whiteColor,
                        size: 30,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            child: Icon(
                              Icons.call_end,
                              color: colorize.whiteColor,
                              size: 30,
                            ),
                            height: 60,
                            width: 60,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
