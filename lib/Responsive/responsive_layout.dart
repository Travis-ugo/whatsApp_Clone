import 'package:flutter/material.dart';
import 'package:lost/Desktop/desktop.dart';
import 'package:lost/mobile/menu/bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Response extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Land(),
      desktop: Web(),
    );
  }
}
