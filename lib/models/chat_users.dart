import 'package:flutter/cupertino.dart';

class ChatUser {
  int? id;

  String? name;
  String? image;
  String? message;
  String? time;

  ChatUser({this.id, this.image, this.name, this.message, this.time});
}