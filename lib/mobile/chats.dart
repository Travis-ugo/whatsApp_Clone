import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:lost/utils/data.dart';
import 'package:lost/utils/item_list.dart';
import 'chat_room.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key, required this.instance}) : super(key: key);
  final List<Chats> instance;

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
                  builder: (context) => ChatRoom(
                    chats: instance[index],
                  ),
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
