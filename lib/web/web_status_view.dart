import 'package:flutter/material.dart';

class WebStatusView extends StatelessWidget {
  const WebStatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 6);
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 600,
              width: 600,
              child: Image.asset('assets/2.jpeg'),
            ),
            Container(
              height: 600,
              width: 600,
              child: Image.asset('assets/3.jpeg'),
            ),
            Container(
              height: 600,
              width: 600,
              child: Image.asset('assets/4.jpeg'),
            ),
            Container(
              height: 600,
              width: 600,
              child: Image.asset('assets/5.jpeg'),
            ),
            Container(
              height: 600,
              width: 600,
              child: Image.asset('assets/6.jpeg'),
            ),
            Container(
              height: 600,
              width: 600,
              child: Image.asset('assets/7.jpeg'),
            )
          ],
        ),
      ),
    );
  }
}

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: WebStatusView());
  }
}
