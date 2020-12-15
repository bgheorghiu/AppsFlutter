import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Currency Convertor',
        home: startPage()
    );
  }
}

class startPage extends StatefulWidget {
  @override
  _startPageState createState() => _startPageState();
}

class _startPageState extends State<startPage> {
  String toChange = '';
  String toShow = ' ';
  String errTxt = null;
  RegExp re = new RegExp(r'^[+-]?([0-9]+([.][0-9]*)?|[.][0-9]+)$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Currency Convertor'),
            centerTitle: true
        ),
        body: Center(
            child :Column(
              children: <Widget>[
                Image.asset(
                    'assets/images/background.jpg',
                    fit: BoxFit.cover),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter the amount in EUR',
                      errorText: errTxt
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (valueInput){
                    setState(() {
                      toChange = valueInput;
                    });
                  },
                ),
                RaisedButton(
                    onPressed: (){
                      setState(() {
                        if(re.hasMatch(toChange)) {
                          errTxt = null;
                          double money = double.tryParse(toChange);
                          money = money * 4.5;
                          toShow = money.toStringAsFixed(2);
                          toShow = toShow + " RON";
                        }
                        else{
                          toShow = '';
                          errTxt = 'Please insert a number';
                        }

                      });
                    },
                    child: Text("CONVERT!",
                      style: TextStyle(fontSize: 15),
                    ),
                ),
                Text("$toShow",
                    style: TextStyle(
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