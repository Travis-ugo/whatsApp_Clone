import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lost/Screens/Desktop/Menu/desktop.dart';
import 'package:lost/Utils/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              LineIcons.whatSApp,
              color: colorize.greyColor,
              size: 60.0,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: LinearPercentIndicator(
                width: 350,
                addAutomaticKeepAlive: false,
                lineHeight: 3.0,
                percent: 1.0,
                backgroundColor: Colors.grey[400],
                progressColor: const Color(0xFF128c7e),
                animation: true,
                animationDuration: 3500,
                onAnimationEnd: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Desktop(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'WhatsApp',
              style: TextStyle(
                color: Colors.grey[300],
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'End-to-end encrypted',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 12,
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'T',
                    style: TextStyle(
                      color: colorize.greyColor,
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: 'R',
                    style: TextStyle(
                      color: colorize.greyColor,
                      fontSize: 22,
                    ),
                  ),
                  TextSpan(
                    text: 'avis',
                    style: TextStyle(
                      color: colorize.greyColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
