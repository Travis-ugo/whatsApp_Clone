import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: <String, WidgetBuilder>{
      //   '/': (BuildContext context) => Chat(instance: chats),
      //   '/DesktopChat': (BuildContext context) => const WebMessages(),
      // },
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: const Color(0xFF0B0D0F),
        textTheme: GoogleFonts.varelaRoundTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: (const Color(0xFF0B0D0F)),
              ),
        ),
      ),
      home: const CallFrame(),
    );
  }
}

class CallFrame extends StatelessWidget {
  const CallFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(
            radius: 29,
          ),
          Text('Buchi'),
          Text('calling'),
          Container(
            child: Row(
              children: [
                Icon(Icons.volume_up),
                Icon(Icons.volume_up),
                Icon(Icons.volume_up),
                Icon(Icons.volume_up),
                Icon(Icons.volume_up),
                Icon(Icons.volume_up)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
