import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lost/peace.dart';
import 'package:lost/view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tahn',
      theme: ThemeData(
        primaryColor: const Color(0xFFf6f6f6),
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: (const Color(0xFF0B0D0F)),
              ),
        ),
      ),
      home: const Callibar(),
    );
  }
}

class Hooland extends StatefulWidget {
  const Hooland({Key? key}) : super(key: key);

  @override
  _HoolandState createState() => _HoolandState();
}

class _HoolandState extends State<Hooland> {
  PageController controller = PageController(initialPage: 0);
  int bottomSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0.0,
            title: const Text(
              'WhatsApp',
              style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 22,
              ),
            ),
            snap: false,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TexButton(
                          callback: () {
                            controller.animateToPage(
                              0,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear,
                            );
                          },
                          text: 'Home',
                        ),
                        TexButton(
                          callback: () {
                            controller.animateToPage(
                              1,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear,
                            );
                          },
                          text: 'card',
                        ),
                        TexButton(
                          callback: () {
                            controller.animateToPage(
                              2,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear,
                            );
                          },
                          text: 'card',
                        ),
                        TexButton(
                          callback: () {
                            controller.animateToPage(
                              3,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear,
                            );
                          },
                          text: 'fast',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            expandedHeight: 400,
            backgroundColor: Colors.green,
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 20,
                ),
                tooltip: 'Setting Icon',
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => SizedBox(
                height: MediaQuery.of(context).size.width,
                child: const ViewPage(),
              ),
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }
}

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Chats');
  }
}

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Status');
  }
}

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Calls');
  }
}

class TexButton extends StatelessWidget {
  const TexButton({
    Key? key,
    required this.callback,
    required this.text,
  }) : super(key: key);
  final String text;
  final void Function() callback;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
    );
  }
}
