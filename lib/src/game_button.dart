import 'package:flutter/material.dart';


class GameButton{
  final int id;
  String text;
  Color bg;
  bool enabled;

  GameButton({this.id, this.text = "", this.bg = Colors.black12, this.enabled = true});
}