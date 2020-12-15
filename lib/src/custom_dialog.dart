import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {

  const CustomDialog(this.title, this.content, this.callback,
      [this.actionText = 'Reset']);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(title)
      ),
      content: Text(content),
      actions: <Widget>[
        FlatButton(
          onPressed: callback,
          color: Colors.black12,
          child: Text(
            actionText,
            style: const TextStyle(
                color: Colors.black,
            ),
          ),
         ),
        ]
    );
  }

  final String title;
  final String content;
  final VoidCallback callback;
  final String actionText;
}
