import 'package:flutter/material.dart';
import 'package:lost/screens/status.dart';

import '../screens/calls.dart';
import '../screens/chats.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 1);
    //int bottomSelectedIndex = 0;
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: const [Chats(), Status(), Calls()],
    );
  }
}
