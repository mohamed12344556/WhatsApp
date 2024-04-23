import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_users.dart';

import 'Updatescreen.dart';
import 'callscreen.dart';
import 'chatscreen.dart';
import 'communitiesscreen.dart';

class LightScreen extends StatefulWidget {
  const LightScreen({super.key});

  @override
  State<LightScreen> createState() => _LightScreenState();
}

class _LightScreenState extends State<LightScreen> {
  int currentPageIndex = 0;
  GlobalKey<ScaffoldState> button = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            selectedIcon: Badge(
              label: Text("98"),
              child: Icon(Icons.chat),
            ),
            icon: Badge(child: Icon(Icons.chat_outlined)),
            label: "Chat",
          ),
          NavigationDestination(
              selectedIcon: Badge(
                label: Text("98"),
                child: Icon(Icons.scatter_plot),
              ),
              icon: Badge(child: Icon(Icons.scatter_plot_outlined)),
              label: "Update"),
          NavigationDestination(
              selectedIcon: Badge(
                label: Text("98"),
                child: Icon(Icons.people),
              ),
              icon: Badge(child: Icon(Icons.people_outline_outlined)),
              label: "Communities"),
          NavigationDestination(
            selectedIcon: Badge(
              label: Text("98"),
              child: Icon(Icons.call),
            ),
            icon: Badge(child: Icon(Icons.call_outlined)),
            label: "Call",
          ),
        ],
      ),
      body: [
        ChatScreen(),
        const UpdateScreen(),
        const CommunitiesScreen(),
        CallScreen(),
      ][currentPageIndex],
    );
  }
}
