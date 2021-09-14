import 'package:flutter/material.dart';
import 'package:lost/utils/data.dart';

import 'desktop_status.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(width: 203),
            Builder(
              builder: (context) => GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage(
                    profile.profilepicture,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 25),
            IconButton(
              icon: const Icon(Icons.motion_photos_on_outlined, size: 22),
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
            const Icon(Icons.check_box_outline_blank, size: 22),
            const SizedBox(width: 25),
            const Icon(Icons.expand_more),
            const SizedBox(width: 25),
            Container(
              height: 100,
              color: Colors.grey,
              width: 0.5,
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(width: 25),
            CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(
                profile.profilepicture,
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hope and trust group chat',
                  style: TextStyle(fontWeight: FontWeight.w100),
                ),
                Text(
                  'Hope and trust group chat',
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
