import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lost/Utils/colors.dart';
import 'package:lost/widgets/field.dart';

// RightDrawer widget displays the search bar drawer when the search icon is tapped on the MenuBar
// this widget uses the endDrawer from scaffold in the parent paage.

class RightDrawer extends StatelessWidget {
  const RightDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _searchController = TextEditingController();
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
                      color: greyColor,
                      size: 17,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    'Search Messages',
                    style: TextStyle(
                      fontSize: 18,
                      color: greyColor,
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
                      controller: _searchController,
                      decoration: InputDecoration(
                        icon: Icon(
                          CupertinoIcons.search,
                          size: 15,
                          color: greyColor,
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
                          color: greyColor,
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
                      color: greyColor,
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
