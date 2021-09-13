import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lost/web/web_status_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: const Color(0xFFf6f6f6),
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: (const Color(0xFF0B0D0F)),
              ),
        ),
      ),
      home: const WebStatusView(),
    );
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
        style: TextStyle(
          fontWeight: FontWeight.w100,
          fontSize: 16,
          color: Colors.grey[100],
        ),
      ),
    );
  }
}
