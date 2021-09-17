import 'package:flutter/material.dart';
import 'package:lost/mobile/Landing_Page/landing_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Response extends StatelessWidget {
  const Response({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const LandingPageMobile(),
      desktop: const LandingPageDesktop(),
    );
  }
}
