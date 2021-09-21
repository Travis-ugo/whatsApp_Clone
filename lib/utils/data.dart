import 'package:flutter/material.dart';

class Settings {
  final String title;
  final String subtitle;
  final IconData iconLabel;

  Settings({
    required this.title,
    required this.subtitle,
    required this.iconLabel,
  });
}

class Chats {
  final String profilepicture;
  final String firstMessage;
  final String name;
  final String time;
  final String messages;
  bool addToCart;

  Chats({
    required this.profilepicture,
    required this.firstMessage,
    required this.name,
    required this.time,
    required this.messages,
    required this.addToCart,
  });
}

class MyProfile {
  final String profilepicture;
  final String firstMessage;
  final String name;
  final String time;
  final String description;

  MyProfile({
    required this.name,
    required this.description,
    required this.profilepicture,
    required this.firstMessage,
    required this.time,
  });
}
