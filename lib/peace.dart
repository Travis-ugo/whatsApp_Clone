import 'package:flutter/material.dart';
import 'view_page.dart';

class Callibar extends StatelessWidget {
  const Callibar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.purple,
            floating: true,
            pinned: true,
            snap: false,
            title: const Align(
                alignment: Alignment.bottomLeft, child: Text("WhatsApp")),
            flexibleSpace: FlexibleSpaceBar(
              title: GestureDetector(
                onTap: () {
                  controller.animateToPage(
                    3,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear,
                  );
                },
                child: const Tab(
                  text: 'Chats',
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => SizedBox(
                height: 200,
                child: PageView(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  children: const [Chats(), Status(), Calls()],
                ),
              ),
              childCount: 1,
            ),
          )
        ],
      ),
    );
    ;
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This function show the sliver app bar
  // It will be called in each child of the TabBarView

  SliverAppBar showSliverAppBar() {
    PageController controller = PageController(initialPage: 0);
    return SliverAppBar(
      backgroundColor: Colors.purple,
      floating: true,
      pinned: true,
      snap: false,
      title:
          const Align(alignment: Alignment.bottomLeft, child: Text("WhatsApp")),
      bottom: TabBar(
        tabs: [
          const Tab(
            icon: Icon(Icons.camera),
          ),
          GestureDetector(
            onTap: () {
              controller.animateToPage(
                3,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            },
            child: const Tab(
              text: 'Chats',
            ),
          ),
          const Tab(
            text: 'Status',
          ),
          const Tab(
            text: 'Calls',
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    return Scaffold(
        body: Column(children: [
      showSliverAppBar(),
    ]));
    // DefaultTabController(
    //   length: 4,
    //   child:
    // TabBarView(
    //   children: [
    //     // This CustomScrollView display the Home tab content
    //     CustomScrollView(
    //       slivers: [
    //         showSliverAppBar(),
    //         // Anther sliver widget: SliverList
    //         SliverList(
    //           delegate: SliverChildListDelegate([
    //             const SizedBox(
    //               height: 400,
    //               child: Text(
    //                 'Home Tab',
    //                 style: TextStyle(fontSize: 20),
    //               ),
    //             ),
    //             Container(
    //               height: 1500,
    //               color: Colors.green,
    //             ),
    //           ]),
    //         ),
    //       ],
    //     ),

    //     // This shows the Settings tab content
    //     CustomScrollView(
    //       slivers: [
    //         showSliverAppBar(),
    //         // Show other sliver stuff
    //         SliverList(
    //           delegate: SliverChildListDelegate([
    //             Container(
    //               height: 600,
    //               color: Colors.blue[200],
    //               child: const Center(
    //                 child: Text(
    //                   'Settings Tab',
    //                   style: TextStyle(fontSize: 20),
    //                 ),
    //               ),
    //             ),
    //             Container(
    //               height: 1200,
    //               color: Colors.pink,
    //             ),
    //           ]),
    //         ),
    //       ],
    //     ),
    //     CustomScrollView(
    //       slivers: [
    //         showSliverAppBar(),
    //         // Anther sliver widget: SliverList
    //         SliverList(
    //           delegate: SliverChildListDelegate([
    //             const SizedBox(
    //               height: 400,
    //               child: Center(
    //                 child: Text(
    //                   'Calls',
    //                   style: TextStyle(fontSize: 20),
    //                 ),
    //               ),
    //             ),
    //             Container(
    //               height: 1500,
    //               color: Colors.green,
    //             ),
    //           ]),
    //         ),
    //       ],
    //     ),
    //     CustomScrollView(
    //       slivers: [
    //         showSliverAppBar(),
    //         // Show other sliver stuff
    //         SliverList(
    //           delegate: SliverChildListDelegate([
    //             Container(
    //               height: 600,
    //               color: Colors.blue[200],
    //               child: const Center(
    //                 child: Text(
    //                   'Settings Tab',
    //                   style: TextStyle(fontSize: 20),
    //                 ),
    //               ),
    //             ),
    //             Container(
    //               height: 1200,
    //               color: Colors.pink,
    //             ),
    //           ]),
    //         ),
    //       ],
    //     ),
    //   ],
    // ),
    //   ),
    // );
  }
}
