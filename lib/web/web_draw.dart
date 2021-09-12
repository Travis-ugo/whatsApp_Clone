import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:lost/utils/data.dart';

class WebDrawer extends StatelessWidget {
  const WebDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[700],
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            height: 110,
            width: 450,
            color: Colors.grey,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: const [
                  Icon(Icons.arrow_back, color: Colors.white, size: 20),
                  SizedBox(width: 30),
                  Text(
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
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
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
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Travis',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Icon(Icons.edit, color: Colors.white),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                const Text(
                  'This is not your username or pin. this name will be visible to your whatsapp contacts',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'About',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'plebty gist after all this shit',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(Icons.edit, color: Colors.white),
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
