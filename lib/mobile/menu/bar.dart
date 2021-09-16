import 'package:flutter/material.dart';
import 'package:lost/mobile/calls.dart';
import 'package:lost/mobile/chats.dart';
import 'package:lost/mobile/status.dart';
import 'package:lost/utils/item_list.dart';
import 'bottom_bar.dart';

class Land extends StatefulWidget {
  const Land({Key? key}) : super(key: key);

  @override
  _LandState createState() => _LandState();
}

class _LandState extends State<Land> {
  PageController controller = PageController(initialPage: 0);
  int bottomSelectedIndex = 0;

  IconData icon = Icons.message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(icon),
        onPressed: () {},
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              'WhatsApp',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[100],
                fontWeight: FontWeight.w100,
              ),
            ),
            snap: false,
            pinned: true,
            floating: false,
            elevation: 0.0,
            actions: [
              const Icon(Icons.search),
              const SizedBox(width: 10),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  _logOutDialog(context);
                },
              ),
              const SizedBox(width: 20),
            ],
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: bottomBar(controller),
                ),
              ],
            ),
            expandedHeight: 100,
            backgroundColor: const Color(0xFF128c7e),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => SizedBox(
                height: MediaQuery.of(context).size.height,
                child: PageView(
                  onPageChanged: (int index) {
                    setState(() {
                      if (index == 2) {
                        icon = Icons.call;
                      } else if (index == 1) {
                        icon = Icons.local_see;
                      } else {
                        icon = Icons.message;
                      }
                    });
                  },
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    // CameraPage(),
                    Chat(instance: chats),
                    Status(instance: chats),
                    const Calls(),
                  ],
                ),
              ),
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }
}

void _logOutDialog(
  BuildContext context,
) {
  showDialog<void>(
    context: context,
    builder: (context) {
      return SizedBox(
        height: 100,
        child: AlertDialog(elevation: 0.0, actions: [
          Column(
            children: [
              const Text('New Group'),
              const Text('New Broadcast'),
              const Text('Linked Devices'),
              const Text('Sharred messages'),
              TextButton(
                child: const Text('Settings'),
                onPressed: () {},
              ),
            ],
          ),
        ]),
      );
    },
  );
}
