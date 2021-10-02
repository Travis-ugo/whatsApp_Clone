import 'package:flutter/material.dart';
import 'package:lost/Utils/widget_imports.dart';

// this widgte displays all available status updates on the mobile view
// status information displayed are generated from the chat_info.dart
// file, in the Utils folder

class Status extends StatelessWidget {
  const Status({Key? key, required this.instance}) : super(key: key);
  final List<ChatsInfo> instance;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          ListTile(
            title: Text(profile.name),
            subtitle: Text(profile.description),
            leading: CircleAvatar(
              radius: 29,
              child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 12,
                  child: Icon(
                    Icons.add,
                    size: 15,
                    color: colorize.whiteColor,
                  ),
                ),
              ),
              backgroundImage: AssetImage(
                profile.profilepicture,
              ),
            ),
            trailing: const Icon(Icons.qr_code),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text('Recent Update'),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              StatusView(chats: instance[index]),
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
                        chats[index].messages + " minutes ago",
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
