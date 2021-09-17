import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lost/Desktop/Menu_Desktop/desktop.dart';
import 'package:lost/mobile/menu/bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LandingPageMobile extends StatelessWidget {
  const LandingPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              LineIcons.whatSApp,
              size: 50.0,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 300,
              child: LinearPercentIndicator(
                width: 300,
                addAutomaticKeepAlive: false,
                lineHeight: 4.0,
                percent: 1.0,
                backgroundColor: Colors.grey[300],
                progressColor: const Color(0xFF128c7e),
                animation: true,
                animationDuration: 3500,
                onAnimationEnd: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Land(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
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
                      color: Colors.grey[400],
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: 'R',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 22,
                    ),
                  ),
                  TextSpan(
                    text: 'avis',
                    style: TextStyle(
                      color: Colors.grey[400],
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

class LandingPageDesktop extends StatelessWidget {
  const LandingPageDesktop({Key? key}) : super(key: key);

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
              color: Colors.grey[400],
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
                      builder: (context) => const Web(),
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
                      color: Colors.grey[400],
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: 'R',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 22,
                    ),
                  ),
                  TextSpan(
                    text: 'avis',
                    style: TextStyle(
                      color: Colors.grey[400],
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
