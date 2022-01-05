import 'package:flutter/material.dart';
import 'package:lost/utils/chat_info.dart';

// Mobile setting page.
// however, this page was never used in the whatsapp clone,
// this widget is the exact settings page of the real time whatsapp
// to be used if you wish

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.grey,
        leading: const Icon(Icons.chevron_left),
        title: const Text('Settings'),
        actions: [
          const SizedBox(width: 20),
          const Icon(Icons.search_outlined),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu_outlined),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(profile.name),
            subtitle: Text(profile.description),
            leading: CircleAvatar(
              radius: 29,
              backgroundImage: AssetImage(
                profile.profilepicture,
              ),
            ),
            trailing: const Icon(Icons.qr_code),
          ),
          const Divider(),
          const SizedBox(height: 30),
          SizedBox(
            height: MediaQuery.of(context).size.height - 300,
            child: ListView.builder(
              itemCount: set.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading:
                      Icon(set[index].iconLabel, color: Colors.grey, size: 25),
                  title: Text(
                    set[index].title,
                    style: const TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  subtitle: Text(
                    set[index].subtitle,
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
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
