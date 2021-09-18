import 'package:flutter/material.dart';
import 'package:lost/utils/data.dart';

import '../Status_Desktop/desktop_status.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(width: 193),
            Builder(
              builder: (context) => GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                    profile.profilepicture,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 25),
            IconButton(
              icon: Icon(
                Icons.motion_photos_on_outlined,
                size: 20,
                color: Colors.grey[400],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebStarStatus(),
                  ),
                );
              },
            ),
            const SizedBox(width: 25),
            Icon(
              Icons.check_box_outline_blank,
              size: 20,
              color: Colors.grey[400],
            ),
            const SizedBox(width: 25),
            Icon(
              Icons.expand_more,
              size: 20,
              color: Colors.grey[400],
            ),
            const SizedBox(width: 25),
            Container(
              height: 100,
              width: 0.4,
              color: Colors.grey[400],
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(width: 25),
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                profile.profilepicture,
              ),
            ),
            const SizedBox(width: 20),
            Text(
              'Hope and trust',
              style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 16,
                color: Colors.grey[200],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
