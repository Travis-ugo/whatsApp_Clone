import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lost/utils/data.dart';
import 'package:lost/utils/item_list.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            ListTile(
              title: Text(profile.name),
              subtitle: Text(profile.description),
              leading: CircleAvatar(
                radius: 29,
                child: const Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 12,
                      child: Icon(Icons.add, size: 15)),
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
              height: MediaQuery.of(context).size.height - 0,
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
