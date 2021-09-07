import 'package:flutter/material.dart';
import 'package:lost/utils/data.dart';
import 'package:lost/utils/item_list.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _logOutDialog(
      BuildContext context,
    ) {
      showDialog<void>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(
              'Confirm loggout',
              style: TextStyle(fontSize: 16),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'confirm',
                    style: TextStyle(color: Colors.redAccent),
                  )),
            ],
          );
        },
      );
    }

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
            onPressed: () {
              _logOutDialog(context);
            },
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
