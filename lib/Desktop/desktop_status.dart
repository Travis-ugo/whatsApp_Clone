import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lost/utils/data.dart';
import 'package:lost/utils/item_list.dart';

import 'desktop_status_view.dart';

class WebStatus extends StatelessWidget {
  const WebStatus({Key? key, required this.instance}) : super(key: key);
  final List<Chats> instance;

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
                              Statuslist(chats: instance[index]),
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

class WebStarStatus extends StatelessWidget {
  const WebStarStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            color: Colors.grey[200],
            width: 450,
            height: MediaQuery.of(context).size.height,
            child: WebStatus(instance: chats),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(CupertinoIcons.xmark, size: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 220),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.circle_outlined, size: 100),
                      SizedBox(height: 25),
                      Text(
                        'Click on a contact to view their status updates',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
