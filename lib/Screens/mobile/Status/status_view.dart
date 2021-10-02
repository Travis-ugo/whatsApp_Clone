import 'package:flutter/material.dart';
import 'package:lost/Utils/widget_imports.dart';

// status view. thsi widget is displayed when any status is tapped,
// this widget displays the status tapped and exists after a set time
// duration with the LinearPercentIndicator package

class StatusView extends StatelessWidget {
  const StatusView({Key? key, required this.chats}) : super(key: key);
  final ChatsInfo chats;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Image(
                image: AssetImage(
                  chats.profilepicture,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width - 20,
                        lineHeight: 3.0,
                        percent: 1.0,
                        backgroundColor: Colors.grey,
                        progressColor: whiteColor,
                        animation: true,
                        animationDuration: 3500,
                        onAnimationEnd: () {
                          Navigator.pop(context);
                        }),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                        chats.profilepicture,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.more_vert,
                      color: whiteColor,
                    ),
                    title: Text(
                      chats.name,
                      style: const TextStyle(color: whiteColor),
                    ),
                    subtitle: Text(
                      chats.messages + " minutes ago",
                      style: const TextStyle(color: whiteColor),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 205,
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.keyboard_arrow_up,
                        size: 15,
                        color: whiteColor,
                      ),
                      Text(
                        'Reply',
                        style: TextStyle(
                          fontSize: 12,
                          color: whiteColor,
                        ),
                      ),
                    ],
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
