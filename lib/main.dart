import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lost/animated_switcher.dart';
import 'package:lost/mobile/chats.dart';
import 'package:lost/utils/item_list.dart';

import 'Desktop/desktop_message.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Chat(instance: chats),
        '/DesktopChat': (BuildContext context) => const WebMessages(),
      },
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: const Color(0xFFf6f6f6),
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: (const Color(0xFF0B0D0F)),
              ),
        ),
      ),
      home: const AnimatedSwitch(),
    );
  }
}

class Page extends StatelessWidget {
  const Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    //int bottomSelectedIndex = 0;
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: const [App(), LoginScreen(), Screen()],
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 6),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Screen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text('LogInScreen'),
      ),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 6),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const App()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Text('Screen'),
      ),
    );
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 6),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Column(children: const [
        Divider(
          height: 240.0,
          color: Colors.white,
        ),
        Center(child: Text('Honestly Boss lady')),
        Divider(
          height: 105.2,
          color: Colors.white,
        ),
      ]),
    );
  }
}
