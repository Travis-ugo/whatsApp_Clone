import 'package:flutter/material.dart';
import 'package:lost/Utils/widget_imports.dart';

// Parent widget, holds all desktop widgets

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _newChatController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xFF111C21),
      endDrawer: const SizedBox(
        width: 450,
        child: Drawer(
          elevation: 0.0,
          child: RightDrawer(),
        ),
      ),
      drawerScrimColor: Colors.transparent,
      drawer: const SizedBox(
        width: 425,
        child: Drawer(
          elevation: 0.0,
          child: LeftDrawer(),
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
            color: greyColor,
          ),
          const SizedBox(width: 25),
          Icon(
            Icons.call,
            size: 18,
            color: greyColor,
          ),
          const SizedBox(width: 25),
          VerticalDivider(
            indent: 18,
            endIndent: 18,
            color: greyColor,
          ),
          const SizedBox(width: 25),
          Builder(
            builder: (context) => IconButton(
              icon: Icon(
                CupertinoIcons.search,
                size: 19,
                color: greyColor,
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
            color: greyColor,
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
                  // decorated container for TextFormFiled .
                  // widget found in the Wigets folder, in field.dart file.
                  child: Field(
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      controller: _newChatController,
                      decoration: InputDecoration(
                        icon: Icon(
                          CupertinoIcons.search,
                          size: 15,
                          color: greyColor,
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
                          color: greyColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 120,
                  child: const Chats(),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ChatRooom(),
            flex: 4,
          ),
        ],
      ),
    );
  }
}
