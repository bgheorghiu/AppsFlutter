import 'package:flutter/material.dart';


class GameButton{
  GameButton({this.id, this.text = '', this.bg = Colors.black12, this.enabled = true});
  
  final int id;
  String text;
  Color bg;
  bool enabled;
}