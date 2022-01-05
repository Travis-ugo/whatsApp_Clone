import 'package:flutter/material.dart';
import 'package:lost/Utils/widget_imports.dart';

// index[3] it takes all recievd and made calls as well as missed
// calls from friends and display the time calls where made.
// call information displayed are generated from the chat_info.dart
// file, in the Utils folder

class Calls extends StatelessWidget {
  const Calls({Key? key, required this.instance}) : super(key: key);
  final List<ChatsInfo> instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CallFrame(
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
                subtitle: Row(
                  children: [
                    Icon(
                      (chats[index].addToCart
                          ? Icons.north_east
                          : Icons.south_west),
                      color:
                          (chats[index].addToCart ? Colors.green : Colors.red),
                    ),
                    Text(
                      ' September ' + chats[index].time + ' AM',
                    ),
                  ],
                ),
                trailing: Icon(
                  (chats[index].addToCart
                      ? Icons.phone_sharp
                      : Icons.video_call),
                  color: Colors.green,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
