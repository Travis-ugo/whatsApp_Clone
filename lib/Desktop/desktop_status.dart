import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lost/utils/data.dart';
import 'package:lost/utils/item_list.dart';

import 'desktop_status_view.dart';

class WebStatus extends StatelessWidget {
  const WebStatus({Key? key}) : super(key: key);

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
                          builder: (context) => const Statuslist(),
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
          SizedBox(
            width: 450,
            height: MediaQuery.of(context).size.height,
            child: const WebStatus(),
          ),
          Expanded(
            child: Container(
              color: Colors.brown,
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
                  Center(
                    child: Container(
                      height: 600,
                      width: 800,
                      color: Colors.green,
                      child: TextButton(
                        onPressed: () {},
                        child: const Center(child: Text('Go Back')),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
