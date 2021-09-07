import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:lost/utils/data.dart';
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
