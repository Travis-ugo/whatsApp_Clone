import 'package:flutter/material.dart';

class AnimatedSwitch extends StatefulWidget {
  const AnimatedSwitch({Key? key}) : super(key: key);

  @override
  _AnimatedSwitchState createState() => _AnimatedSwitchState();
}

class _AnimatedSwitchState extends State<AnimatedSwitch> {
  bool isVisible = true;
  int elapsed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Switcher")),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: Center(
        child: AnimatedSwitcher(
          child: Text("Elapsed : $elapsed", key: ValueKey(elapsed)),
          duration: const Duration(seconds: 2),
          transitionBuilder: (Widget child, Animation<double> animation) {
            final inAnimation = Tween<Offset>(
                    begin: const Offset(1.0, 0.0), end: const Offset(0.0, 0.0))
                .animate(animation);
            final outAnimation = Tween<Offset>(
              begin: const Offset(-1.0, 0.0),
              end: const Offset(0.0, 0.0),
            ).animate(animation);

            if (child.key == ValueKey(elapsed)) {
              return ClipRect(
                child: SlideTransition(
                  position: inAnimation,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      key: UniqueKey(),
                      height: 400,
                      width: 400,
                      color: Colors.pink,
                    ),
                  ),
                ),
              );
            } else {
              return ClipRect(
                child: SlideTransition(
                  position: outAnimation,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      key: UniqueKey(),
                      height: 400,
                      width: 400,
                      color: Colors.blue,
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
