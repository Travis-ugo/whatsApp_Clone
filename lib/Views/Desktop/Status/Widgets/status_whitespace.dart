import 'package:flutter/material.dart';
import 'package:lost/Utils/widget_imports.dart';

class StatusWhiteSpace extends StatelessWidget {
  const StatusWhiteSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Row(
        children: [
          Container(
            color: Colors.grey[200],
            width: 450,
            height: MediaQuery.of(context).size.height,
            child: Status(instance: chats),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        CupertinoIcons.xmark,
                        size: 20,
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 220),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle_outlined,
                        size: 100,
                        color: Colors.grey[300],
                      ),
                      const SizedBox(height: 25),
                      Text(
                        'Click on a contact to view their status updates',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[300],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
