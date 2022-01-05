import 'package:lost/Utils/widget_imports.dart';
import 'Widgets/message_flex_box.dart';

// this widget helps seperate sent message
// and replies from chatroom.

class Messages extends StatelessWidget {
  const Messages({
    Key? key,
    required this.chats,
  }) : super(key: key);
  final ChatsInfo chats;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: 13,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              MessageFlexBox(
                color: const Color(0xFFD3FEC5),
                leftHand: 15,
                rightHand: 0,
                align: Alignment.topRight,
                text: profile.firstMessage,
                chats: chats,
              ),
              MessageFlexBox(
                color: const Color(0xFFF5F5F5),
                leftHand: 0,
                rightHand: 15,
                align: Alignment.topLeft,
                text: chats.firstMessage,
                chats: chats,
              ),
              MessageFlexBox(
                color: const Color(0xFFD3FEC5),
                leftHand: 15,
                rightHand: 0,
                align: Alignment.topRight,
                text: profile.firstMessage,
                chats: chats,
              ),
              MessageFlexBox(
                color: const Color(0xFFF5F5F5),
                leftHand: 0,
                rightHand: 15,
                align: Alignment.topLeft,
                text: chats.firstMessage,
                chats: chats,
              ),
            ],
          ),
        );
      },
    );
  }
}
