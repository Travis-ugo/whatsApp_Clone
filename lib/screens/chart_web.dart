import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:lost/utils/item_list.dart';
import 'chat_room.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: GestureDetector(
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
                CircleAvatar(
                  backgroundColor: (chats[index].addToCart
                      ? Colors.green
                      : Colors.transparent),
                  radius: 12,
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
              ]),
            ),
          ),
        );
      },
    );
  }
}

SliverAppBar showSliverAppBar(String screenTitle) {
  return SliverAppBar(
    backgroundColor: Colors.purple,
    floating: true,
    pinned: true,
    snap: false,
    title: Text(screenTitle),
    bottom: const TabBar(
      tabs: [
        Tab(
          icon: Icon(Icons.home),
          text: 'Home',
        ),
        Tab(
          icon: Icon(Icons.settings),
          text: 'Setting',
        )
      ],
    ),
  );
}

class ChatRoomWeb extends StatelessWidget {
  const ChatRoomWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              //  Navigator.pop(context);
            },
            child: const Center(child: Text('Go Back')),
          ),
          Positioned(
            bottom: 0.0,
            child: Expanded(
              child: Container(
                height: 60,
                color: Colors.green,
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    const Icon(CupertinoIcons.smiley),
                    const SizedBox(width: 10),
                    const Icon(Icons.attach_file_rounded),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink,
                        ),
                        height: 44,
                        child: TextFormField(
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
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(CupertinoIcons.smiley),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
