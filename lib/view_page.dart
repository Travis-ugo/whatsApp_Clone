import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    //int bottomSelectedIndex = 0;
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: const [Chats(), Status(), Calls()],
    );
  }
}

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.pink, child: const Center(child: Text('Chats')));
  }
}

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.orangeAccent, child: const Center(child: Text('Status')));
  }
}

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueGrey, child: const Center(child: Text('Calls')));
  }
}
