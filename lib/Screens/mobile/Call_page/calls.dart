import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lost/utils/data.dart';
import 'package:lost/utils/item_list.dart';
import 'call_frame.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key, required this.instance}) : super(key: key);
  final List<Chats> instance;

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
