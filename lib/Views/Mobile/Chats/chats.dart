import 'package:flutter/material.dart';
import 'package:lost/Utils/widget_imports.dart';

// A list of all available chats with family and friends
// this is the index[1] page of the whatsapp clone application.

class Chat extends StatelessWidget {
  const Chat({Key? key, required this.instance}) : super(key: key);
  final List<ChatsInfo> instance;

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
                  style: const TextStyle(fontSize: 12, color: Colors.green),
                ),
                const SizedBox(
                  height: 5,
                ),
                // if user has a new message, a green circle avatar will appeare at the right,
                // indicating the number of unread messages at the indox.
                // else nothing will show.
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
