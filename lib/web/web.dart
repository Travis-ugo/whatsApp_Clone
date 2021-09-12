import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:lost/screens/chat_room.dart';
import 'package:lost/utils/item_list.dart';
import 'package:lost/web/web_chatroom.dart';
import 'web_menu.dart';
import 'web_draw.dart';

class WebChat extends StatelessWidget {
  const WebChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    return Scaffold(
      endDrawer: const SizedBox(
        width: 450,
        child: Drawer(
          elevation: 0.0,
          child: WebDrawer(),
        ),
      ),
      drawerScrimColor: Colors.transparent,
      drawer: const SizedBox(
        width: 450,
        child: Drawer(
          elevation: 0.0,
          child: WebDrawer(),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightGreen,
        elevation: 0.0,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                CupertinoIcons.search,
                size: 20,
              ),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
          const SizedBox(width: 25),
          const Icon(
            Icons.expand_more,
            size: 20,
          ),
          const SizedBox(width: 25),
        ],
        title: const MenuBar(),
      ),
      body: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(width: 0.5, color: Colors.grey),
              ),
            ),
            width: 450,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 25),
                  child: Field(
                    child: TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        icon: Icon(CupertinoIcons.search, size: 15),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        hintText: 'Search or start new chart',
                        hintStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 120,
                  // width: 450,
                  child: const ChatWeb(),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ChatRoomWeb(),
            flex: 2,
          ),
        ],
      ),
    );
  }
}

class ChatWeb extends StatelessWidget {
  const ChatWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatRoom(),
                  ),
                );
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 29,
                  backgroundImage: AssetImage(
                    chats[index].profilepicture,
                  ),
                ),
                title: Text(chats[index].name),
                subtitle: Text(
                  chats[index].firstMessage,
                ),
                trailing: Column(children: [
                  Text(
                    chats[index].time,
                    style: const TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: (chats[index].addToCart
                          ? Colors.green
                          : Colors.transparent),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 23,
                    width: 31,
                    child: Center(
                      child: Text(
                        chats[index].messages,
                        style: TextStyle(
                          fontSize: 12,
                          color: (chats[index].addToCart
                              ? Colors.grey[100]
                              : Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(height: 5),
            const Divider(),
            const SizedBox(height: 5),
          ],
        );
      },
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
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(60),
      ),
      child: Center(child: child),
    );
  }
}

carriage(PageController controller, IconData icon, int index) {
  return IconButton(
    icon: Icon(
      icon,
    ),
    onPressed: () {
      controller.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    },
  );
}
