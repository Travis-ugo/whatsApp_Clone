import 'package:flutter/material.dart';
import 'package:lost/Utils/colors.dart';
import 'package:lost/utils/chat_info.dart';

// LeftDrawer widget displays user profile when circle avatar is tapped
// this widget uses the drawer from scaffold in the parent paage.

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF111C21),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            height: 110,
            width: 430,
            color: const Color(0xFF2D3333),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage(
                      profile.profilepicture,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Your Name',
                  style: TextStyle(
                    color: Color(0xFF128c7e),
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Travis',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[300],
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Icon(Icons.edit, color: colorize.greyColor),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                Text(
                  'This is not your username or pin. this name will be visible to your whatsapp contacts',
                  style: TextStyle(
                    color: colorize.greyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'About',
                  style: TextStyle(
                    color: Color(0xFF128c7e),
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'flutter developer',
                      style: TextStyle(color: colorize.greyColor, fontSize: 16),
                    ),
                    Icon(
                      Icons.edit,
                      color: colorize.greyColor,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
