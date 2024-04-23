import 'package:flutter/material.dart';
import 'package:whatsapp/screens/lightthem/chat_detailes.dart';

import '../../data/mydata.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  GlobalKey<ScaffoldState> button = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      key: button,
      children: [
        ListTile(
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.green, fontSize: 23),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.camera_alt_outlined),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  button.currentState!.openEndDrawer();
                },
              ),
            ],
          ),
        ),
        for (int i = 0; i < mychat.length; i++)
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Chat_Detailes(
                            name: mychat[i].name,
                            image: mychat[i].image,
                            messag: mychat[i].message,
                          )));
            },
            leading: CircleAvatar(
              foregroundImage: AssetImage(mychat[i].image.toString()),
            ),
            title: Text(mychat[i].name.toString()),
            subtitle: Text(mychat[i].message.toString()),
            trailing: Text(mychat[i].time.toString()),
          ),
      ],
    );
  }
}
