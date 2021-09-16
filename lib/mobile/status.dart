import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lost/utils/data.dart';
import 'package:lost/utils/item_list.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Status extends StatelessWidget {
  const Status({Key? key, required this.instance}) : super(key: key);
  final List<Chats> instance;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          ListTile(
            title: Text(profile.name),
            subtitle: Text(profile.description),
            leading: CircleAvatar(
              radius: 29,
              child: const Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 12,
                  child: Icon(
                    Icons.add,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              backgroundImage: AssetImage(
                profile.profilepicture,
              ),
            ),
            trailing: const Icon(Icons.qr_code),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text('Recent Update'),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MobileStatus(chats: instance[index]),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 29,
                        backgroundImage: AssetImage(
                          chats[index].profilepicture,
                        ),
                      ),
                      title: Text(chats[index].name),
                      subtitle: Text(
                        chats[index].messages + " minutes ago",
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MobileStatus extends StatelessWidget {
  const MobileStatus({Key? key, required this.chats}) : super(key: key);
  final Chats chats;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Image(
                image: AssetImage(
                  chats.profilepicture,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width - 20,
                        lineHeight: 3.0,
                        percent: 1.0,
                        backgroundColor: Colors.grey,
                        progressColor: Colors.white,
                        animation: true,
                        animationDuration: 3500,
                        onAnimationEnd: () {
                          Navigator.pop(context);
                        }),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                        chats.profilepicture,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    title: Text(
                      chats.name,
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      chats.messages + " minutes ago",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 205,
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.keyboard_arrow_up,
                        size: 15,
                        color: Colors.white,
                      ),
                      Text(
                        'Reply',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
