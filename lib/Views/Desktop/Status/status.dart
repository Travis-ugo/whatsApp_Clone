import 'package:flutter/material.dart';
import '../../../Utils/widget_imports.dart';

// this widgte displays all available status updates on the Desktop view
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
          const SizedBox(height: 35),
          ListTile(
            title: const Text('My Status'),
            subtitle: const Text(
              "No updates",
              style: TextStyle(fontSize: 12),
            ),
            leading: CircleAvatar(
              radius: 29,
              child: const Align(
                alignment: Alignment.bottomRight,
              ),
              backgroundImage: AssetImage(
                profile.profilepicture,
              ),
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              'Recent',
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 0,
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
                        "today at " + chats[index].messages + " minutes ago",
                        style: const TextStyle(fontSize: 12),
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
