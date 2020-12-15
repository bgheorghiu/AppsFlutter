import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Currency Convertor', home: StartPage());
  }
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  String toChange = '';
  String toShow = ' ';
  String errTxt;
  RegExp re = RegExp(r'^[+-]?([0-9]+([.][0-9]*)?|[.][0-9]+)$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Currency Convertor'), centerTitle: true),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/background.jpg', fit: BoxFit.cover),
            TextField(
              decoration: InputDecoration(hintText: 'Enter the amount in EUR', errorText: errTxt),
              keyboardType: TextInputType.number,
              onChanged: (String valueInput) {
                setState(() {
                  toChange = valueInput;
                });
              },
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  if (re.hasMatch(toChange)) {
                    errTxt = null;
                    double money = double.tryParse(toChange);
                    money = money * 4.5;
                    toShow = money.toStringAsFixed(2);
                    toShow = toShow + ' RON';
                  } else {
                    toShow = '';
                    errTxt = 'Please insert a number';
                  }
                });
              },
              child: const Text(
                'CONVERT!',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Text(
              '$toShow',
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
