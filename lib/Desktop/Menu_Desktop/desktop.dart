import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:lost/Desktop/Chat_Desktop/desktop_chatroom.dart';
import '../Chat_Desktop/desktop_chat.dart';
import 'desktop_menu.dart';
import 'desktop_draw.dart';

class Web extends StatelessWidget {
  const Web({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xFF111C21),
      endDrawer: const SizedBox(
        width: 450,
        child: Drawer(
          elevation: 0.0,
          child: EndDrawer(),
        ),
      ),
      drawerScrimColor: Colors.transparent,
      drawer: const SizedBox(
        width: 425,
        child: Drawer(
          elevation: 0.0,
          child: WebDrawer(),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF2D3333),
        elevation: 0.0,
        actions: [
          Icon(
            CupertinoIcons.video_camera,
            size: 25,
            color: Colors.grey[400],
          ),
          const SizedBox(width: 25),
          Icon(
            Icons.call,
            size: 18,
            color: Colors.grey[400],
          ),
          const SizedBox(width: 25),
          VerticalDivider(
            indent: 18,
            endIndent: 18,
            color: Colors.grey[400],
          ),
          const SizedBox(width: 25),
          Builder(
            builder: (context) => IconButton(
              icon: Icon(
                CupertinoIcons.search,
                size: 19,
                color: Colors.grey[400],
              ),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
          const SizedBox(width: 25),
          Icon(
            Icons.expand_more,
            size: 23,
            color: Colors.grey[400],
          ),
          const SizedBox(width: 25),
        ],
        title: const MenuBar(),
      ),
      body: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF111C21),
              border: Border(
                right: BorderSide(
                  width: 0.5,
                  color: Color(0xFFADADAD),
                ),
              ),
            ),
            width: 430,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 25),
                  child: Field(
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      controller: _passwordController,
                      decoration: InputDecoration(
                        icon: Icon(
                          CupertinoIcons.search,
                          size: 15,
                          color: Colors.grey[400],
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        hintText: 'Search or start new chart',
                        hintStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w100,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 120,
                  child: const WebChat(),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ChatRoomWeb(),
            flex: 4,
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
      height: 37,
      decoration: BoxDecoration(
        color: const Color(0xFF2D3333),
        borderRadius: BorderRadius.circular(60),
      ),
      child: Center(child: child),
    );
  }
}
