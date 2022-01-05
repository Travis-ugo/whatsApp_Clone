import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:lost/Utils/widget_imports.dart';

// Parent widget, holds all desktop widgets

class DesktopHomePage extends StatelessWidget {
  const DesktopHomePage({Key? key}) : super(key: key);

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
            IconlyBold.video,
            size: 23,
            color: colorize.greyColor,
          ),
          const SizedBox(width: 25),
          Icon(
            IconlyBold.call,
            size: 18,
            color: colorize.greyColor,
          ),
          const SizedBox(width: 25),
          VerticalDivider(
            indent: 18,
            endIndent: 18,
            color: colorize.greyColor,
          ),
          const SizedBox(width: 25),
          Builder(
            builder: (context) => IconButton(
              icon: Icon(
                IconlyLight.search,
                size: 23,
                color: colorize.greyColor,
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
            color: colorize.greyColor,
          ),
          const SizedBox(width: 25),
        ],
        title: const MenuBar(),
      ),
      body: Row(
        // direction: Axis.horizontal,
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
            child: CustomScrollView(
              // mainAxisAlignment: MainAxisAlignment.center,
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 25),
                    // decorated container for TextFormFiled .
                    // widget found in the Wigets folder, in field.dart file.
                    child: Field(
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        controller: _newChatController,
                        decoration: InputDecoration(
                          icon: Icon(
                            IconlyLight.search,
                            size: 18,
                            color: colorize.greyColor,
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          hintText: 'Search or start new chart',
                          hintStyle: TextStyle(
                            // overflow: TextOverflow.fade,
                            fontSize: 13,
                            fontWeight: FontWeight.w100,
                            color: colorize.greyColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: Chats(),
                ),
              ],
            ),
          ),
          const Expanded(
            child: SizedBox(width: 400, child: ChatRooom()),
          ),
        ],
      ),
    );
  }
}
