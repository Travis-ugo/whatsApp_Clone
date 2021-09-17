import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LandingPageMobile extends StatelessWidget {
  const LandingPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[800],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.whatshot,
            color: Colors.grey[300],
          ),
          Center(
            child: LinearPercentIndicator(
              width: 300,
              addAutomaticKeepAlive: false,
              lineHeight: 4.0,
              percent: 1.0,
              backgroundColor: Colors.grey[300],
              progressColor: const Color(0xFF128c7e),
              animation: true,
              animationDuration: 3500,
              onAnimationEnd: () {},
            ),
          ),
          Text('WhatsApp',
              style: TextStyle(
                color: Colors.grey[200],
              )),
          Text(
            'End-to-end encrypted',
            style: TextStyle(
              color: Colors.grey[300],
            ),
          ),
        ],
      ),
    );
  }
}

class LandingPageDesktop extends StatelessWidget {
  const LandingPageDesktop({Key? key}) : super(key: key);

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
              Icons.whatshot,
              color: Colors.grey[300],
            ),
            Center(
              child: Align(
                alignment: Alignment.center,
                child: LinearPercentIndicator(
                  width: 300,
                  addAutomaticKeepAlive: false,
                  lineHeight: 4.0,
                  percent: 1.0,
                  backgroundColor: Colors.grey[300],
                  progressColor: const Color(0xFF128c7e),
                  animation: true,
                  animationDuration: 3500,
                  onAnimationEnd: () {},
                ),
              ),
            ),
            Text(
              'WhatsApp',
              style: TextStyle(
                color: Colors.grey[200],
              ),
            ),
            Text(
              'End-to-end encrypted',
              style: TextStyle(
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
