// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lost/Desktop/desktop.dart';
import 'package:lost/Desktop/desktop_status.dart';
import 'package:lost/mobile/calls.dart';
import 'package:lost/mobile/chats.dart';
import 'package:lost/mobile/status.dart';
import 'package:lost/utils/item_list.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    //int bottomSelectedIndex = 0;
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: [Chat(instance: chats), Status(instance: chats), Calls()],
    );
  }
}

class WebPageView extends StatelessWidget {
  const WebPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: [Web(), WebStatus(instance: chats), Calls()],
    );
  }
}
