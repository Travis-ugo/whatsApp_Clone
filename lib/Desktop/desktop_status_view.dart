import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost/utils/data.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Statuslist extends StatelessWidget {
  const Statuslist({Key? key, required this.chats}) : super(key: key);
  final Chats chats;

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Image(
              image: AssetImage(
                chats.profilepicture,
              ),
            ),
          ),
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
                    Center(
                      child: LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width / 4,
                        lineHeight: 10.0,
                        percent: 1.0,
                        backgroundColor: Colors.grey,
                        progressColor: Colors.white,
                        animation: true,
                        animationDuration: 3500,
                        onAnimationEnd: () {
                          Navigator.pop(context);
                        },
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
                          style: const TextStyle(color: Colors.white),
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
                    const Icon(
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
