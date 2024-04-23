import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/screens/lightthem/lightscreen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LightScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("C:\Users\amaz8\AndroidStudioProjects\whatsapp\assets\images\wallpaperflare.com_wallpaper (19).jpg"),
    );
  }
}
