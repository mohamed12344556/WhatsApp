import 'package:flutter/material.dart';

import '../../data/mychat_detailes_list.dart';
import '../../models/mychat_detailes.dart';

class Chat_Detailes extends StatelessWidget {
  String? name = '', image = '', messag = '';

  Chat_Detailes({this.name, this.image, this.messag});

  GlobalKey<ScaffoldState> button = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: button,
      endDrawer: Drawer(
          child: ListView(
        children: [Text("data")],
      )),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert_outlined),
            onPressed: () {
              button.currentState!.openEndDrawer();
            },
          ),
        ],
        title: Row(
          children: [
            CircleAvatar(
              foregroundImage: AssetImage(this.image.toString()),
            ),
            SizedBox(width: 12),
            Text('${this.name}'),
          ],
        ),
      ),
    );
  }
}
