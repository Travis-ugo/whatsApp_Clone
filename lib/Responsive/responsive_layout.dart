import 'package:flutter/material.dart';
import 'package:lost/Screens/Desktop/Landing_Page/deskto_landing_page.dart';
import 'package:lost/Screens/mobile/Landing_Page/landing_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Response extends StatelessWidget {
  const Response({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const LandingPageDesktop(),
      desktop: const LandingPageDesktop(),
    );
  }
}
