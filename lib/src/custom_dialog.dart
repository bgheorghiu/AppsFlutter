import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback callback;
  final String actionText;

  CustomDialog(this.title, this.content, this.callback,
      [this.actionText = "Reset"]);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: new Center(
        child: new Text(title)
      ),
      content: new Text(content),
      actions: <Widget>[
        new FlatButton(
          onPressed: callback,
          color: Colors.black12,
          child: new Text(
            actionText,
            style: new TextStyle(
                color: Colors.black,
            ),
          ),
         ),
        ]
    );
  }
}
