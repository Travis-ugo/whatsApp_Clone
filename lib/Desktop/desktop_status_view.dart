import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost/mobile/chats.dart';

import 'desktop.dart';

class WebStatusView extends StatelessWidget {
  const WebStatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 6);
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 600,
              width: 600,
              child: Image.asset('assets/2.jpeg'),
            ),
            Container(
              height: 600,
              width: 600,
              child: Image.asset('assets/3.jpeg'),
            ),
            Container(
              height: 600,
              width: 600,
              child: Image.asset('assets/4.jpeg'),
            ),
            Container(
              height: 600,
              width: 600,
              child: Image.asset('assets/5.jpeg'),
            ),
            Container(
              height: 600,
              width: 600,
              child: Image.asset('assets/6.jpeg'),
            ),
            Container(
              height: 600,
              width: 600,
              child: Image.asset('assets/7.jpeg'),
            )
          ],
        ),
      ),
    );
  }
}

// class Display extends StatelessWidget {
//   const Display({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(body: WebStatusView());
//   }
// }

class Statuslist extends StatelessWidget {
  const Statuslist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        CupertinoIcons.xmark,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Container(
                        color: Colors.black12,
                        height: 40,
                        width: 40,
                        child: const Icon(
                          Icons.chevron_left_rounded,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        color: Colors.black12,
                        height: 40,
                        width: 40,
                        child: const Icon(
                          Icons.chevron_right_rounded,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      CupertinoIcons.smiley,
                      size: 30,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12,
                      ),
                      height: 42,
                      width: MediaQuery.of(context).size.width - 700,
                      child: Center(
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
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Icon(
                      Icons.send,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
