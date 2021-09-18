import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:lost/utils/data.dart';

import 'desktop.dart';

class WebDrawer extends StatelessWidget {
  const WebDrawer({Key? key}) : super(key: key);

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
                    Icon(Icons.edit, color: Colors.grey[400]),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                Text(
                  'This is not your username or pin. this name will be visible to your whatsapp contacts',
                  style: TextStyle(
                    color: Colors.grey[400],
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
                      'Plebty gist after all this shit',
                      style: TextStyle(color: Colors.grey[400], fontSize: 16),
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.grey[400],
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

class EndDrawer extends StatelessWidget {
  const EndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _passwordController = TextEditingController();
    return Container(
      color: const Color(0xFF111C21),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            height: 70,
            width: 450,
            color: const Color(0xFF2D3333),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      CupertinoIcons.xmark,
                      color: Colors.grey[400],
                      size: 17,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    'Search Messages',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                  child: Field(
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      controller: _passwordController,
                      decoration: InputDecoration(
                        icon: Icon(
                          CupertinoIcons.search,
                          size: 15,
                          color: Colors.grey[400],
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        hintText: 'Search...',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Text(
                    'search for messages',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
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
