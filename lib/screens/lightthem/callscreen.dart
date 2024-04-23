import 'package:flutter/material.dart';

import '../../data/mychat_detailes_list.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined)),
        ],
      ),
      body: ListView(
        children: [
          for (int i = 0; i <chat_list_details.length; i++)
          ListTile(
            title: Text(chat_list_details[i].name.toString()),
            subtitle: Text(chat_list_details[i].message.toString()),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(chat_list_details[i].image.toString()),
            ),
            trailing: IconButton(onPressed: (){},icon: Icon(Icons.phone_outlined),)
          ),
        ],
      )
    );
  }
}
