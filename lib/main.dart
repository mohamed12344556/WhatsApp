import 'package:flutter/material.dart';
import 'package:whatsapp/screens/lightthem/lightscreen.dart';
import 'package:whatsapp/welcome.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
      //home: LightScreen(),
    ),
  );
}
