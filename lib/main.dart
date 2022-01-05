import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lost/Utils/widget_imports.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
        primaryColor: const Color(0xFF0B0D0F),
        textTheme: GoogleFonts.varelaRoundTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: (const Color(0xFF0B0D0F)),
              ),
        ),
      ),
      home: const LandingPageMobile(),
    );
  }
}

class Response extends StatelessWidget {
  const Response({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const LandingPageMobile(),
      desktop: const LandingPage(),
    );
  }
}
