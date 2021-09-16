import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:lost/utils/item_list.dart';
import 'desktop_chatroom.dart';

class WebChat extends StatelessWidget {
  const WebChat({Key? key}) : super(key: key);

  // print(data);
  //  data['title'],

  @override
  Widget build(BuildContext context) {
    // Map? data = ModalRoute.of(context).settings.arguments;

    // Map data = {};
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                // Chats instance = setting;
                // Navigator.pushNamed(context, '/mobileInfo', arguments: {
                //   'firstMessage': instance.firstMessage,
                //   'name': instance.name,
                //   'profilePicture': instance.profilepicture,
                // });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatRoomWeb(),
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
