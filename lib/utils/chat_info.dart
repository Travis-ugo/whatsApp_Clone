import 'package:flutter/material.dart';
import 'data.dart';

final MyProfile profile = MyProfile(
  name: 'Travis Okonicha',
  firstMessage: 'Homty Domty left town',
  profilepicture: 'assets/6.jpeg',
  time: '',
  description: 'Tap to add status update',
);

List<Settings> set = [
  Settings(
    title: 'Account',
    subtitle: 'Privacy, Security, Change number',
    iconLabel: Icons.keyboard_alt_outlined,
  ),
  Settings(
    title: 'Chats',
    subtitle: 'Theme, wallpapers, chat history',
    iconLabel: Icons.message_outlined,
  ),
  Settings(
    title: 'Notifications',
    subtitle: 'Message, group & call tones',
    iconLabel: Icons.notifications,
  ),
  Settings(
    title: 'Storage and Data',
    subtitle: 'Network usage, auto-download',
    iconLabel: Icons.storage_outlined,
  ),
  Settings(
    title: 'Help',
    subtitle: 'Help center, constact us, privacy policy',
    iconLabel: Icons.help_outline_rounded,
  ),
];

List<ChatsInfo> chats = [
  ChatsInfo(
    profilepicture: 'assets/1.jpeg',
    firstMessage: 'You know, those markdown files that get created',
    name: 'Daniel',
    time: '5:37',
    messages: '1',
    addToCart: true,
  ),
  ChatsInfo(
    profilepicture: 'assets/2.jpeg',
    firstMessage: 'You know, those markdown files that get created',
    name: 'Mark',
    time: '21:41',
    messages: '3',
    addToCart: true,
  ),
  ChatsInfo(
    profilepicture: 'assets/3.jpeg',
    firstMessage: 'You know, those markdown files that get created',
    name: 'Mum',
    time: '2:22',
    messages: '41',
    addToCart: false,
  ),
  ChatsInfo(
    profilepicture: 'assets/4.jpeg',
    firstMessage: 'You know, those markdown files that get created',
    name: 'Olivia',
    time: '00:10',
    messages: '21',
    addToCart: true,
  ),
  ChatsInfo(
    profilepicture: 'assets/5.jpeg',
    firstMessage: 'You know, those markdown files that get created',
    name: 'Charlotte',
    time: '12:03',
    messages: '3',
    addToCart: false,
  ),
  ChatsInfo(
    profilepicture: 'assets/6.jpeg',
    firstMessage: 'You know, those markdown files that get created',
    name: 'Patricia',
    time: '10:07',
    messages: '1',
    addToCart: true,
  ),
  ChatsInfo(
    profilepicture: 'assets/7.jpeg',
    firstMessage: 'You know, those markdown files that get created',
    name: 'Liam',
    time: '5:37',
    messages: '1',
    addToCart: false,
  ),
  ChatsInfo(
    profilepicture: 'assets/8.jpeg',
    firstMessage: 'You know, those markdown files that get created',
    name: 'Lucas',
    time: '21:41',
    messages: '3',
    addToCart: true,
  ),
  ChatsInfo(
    profilepicture: 'assets/9.jpeg',
    firstMessage: 'You know, those markdown files that get created',
    name: 'Ava',
    time: '2:22',
    messages: '41',
    addToCart: false,
  ),
  ChatsInfo(
    profilepicture: 'assets/1.jpeg',
    firstMessage: 'You know, those markdown files that get created',
    name: 'Mia',
    time: '00:10',
    messages: '21',
    addToCart: true,
  ),
  ChatsInfo(
    profilepicture: 'assets/3.jpeg',
    firstMessage: 'You know, those markdown files that get created',
    name: 'Benjamin',
    time: '12:03',
    messages: '3',
    addToCart: false,
  ),
  ChatsInfo(
    profilepicture: 'assets/6.jpeg',
    firstMessage: 'You know, those markdown files that get created',
    name: 'Isabella',
    time: '10:07',
    messages: '1',
    addToCart: true,
  ),
];
