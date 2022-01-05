import 'package:flutter/material.dart';
import 'package:lost/Utils/widget_imports.dart';

// A list of all available chats with family and friends

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController? _chatsController = ScrollController();

    return ListView.builder(
      shrinkWrap: true,
      itemCount: chats.length,
      controller: _chatsController,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatRooom(),
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
                title: Text(
                  chats[index].name,
                  style: TextStyle(color: Colors.grey[200]),
                ),
                subtitle: Text(
                  chats[index].firstMessage,
                  style: TextStyle(color: colorize.greyColor),
                ),
                trailing: Column(children: [
                  Text(
                    chats[index].time,
                    style: TextStyle(fontSize: 12, color: colorize.greyColor),
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
                              ? Colors.grey[200]
                              : Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Divider(
              color: Colors.grey[600],
              thickness: 0.5,
              indent: 85,
              endIndent: 10,
            ),
            const SizedBox(height: 5),
          ],
        );
      },
    );
  }
}
