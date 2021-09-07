import 'package:flutter/material.dart';
import 'package:lost/screens/carmera.dart';
import '../screens/calls.dart';
import '../screens/chats.dart';
import '../screens/status.dart';
import 'bottom_bar.dart';

class Land extends StatefulWidget {
  const Land({Key? key}) : super(key: key);

  @override
  _LandState createState() => _LandState();
}

class _LandState extends State<Land> {
  PageController controller = PageController(initialPage: 0);
  int bottomSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.message_outlined,
          color: Colors.white,
        ),
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
            actions: const [
              Icon(Icons.search),
              SizedBox(width: 10),
              Icon(Icons.more_vert),
              SizedBox(width: 20),
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
            backgroundColor: Colors.green,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => SizedBox(
                height: MediaQuery.of(context).size.height,
                child: PageView(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CameraPage(),
                    Chats(),
                    Status(),
                    Calls(),
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
