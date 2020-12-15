
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'audio_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<AudioButton> buttonsList;

  List<AudioButton> doInit(){
    var _audioButtons = <AudioButton>[
      new AudioButton(text: "Salut"),
      new AudioButton(text: "Salut", language: true),
      new AudioButton(text: "Ma numesc"),
      new AudioButton(text: "Ma numesc", language: true),
      new AudioButton(text: "Cum esti?"),
      new AudioButton(text: "Cum esti?", language: true),
      new AudioButton(text: "Sunt bine"),
      new AudioButton(text: "Sunt bine", language: true),
    ];
    return _audioButtons;
  }

  void onPlayAudio(String fileName){
    //AssetsAudioPlayer audioCache = AssetsAudioPlayer();
    //audioCache.open(Audio('sounds/$fileName.mp3'));
    AudioCache player = AudioCache();
    player.play('$fileName.mp3');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buttonsList = doInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sunete'),
        centerTitle: true,
      ),
      body: Center(
        child:
        GridView.builder(
          padding: const EdgeInsets.all(10.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            crossAxisSpacing: 9.0,
            mainAxisSpacing: 9.0,
          ),
          itemCount: buttonsList.length,
          itemBuilder: (context,i) => new SizedBox(
            width: 100.0,
            height: 100.0,

            child: RaisedButton(
              padding: const EdgeInsets.all(10.0),
              onPressed: buttonsList[i].enabled
                  ? () => onPlayAudio(buttonsList[i].nameFile)
                  : null,
              child: Center(
                child: Text(
                  buttonsList[i].text,
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                  ),
                ),
              ),
              color: Colors.blueAccent,
            ),
          ),
        ),
      ),
    );
  }
}

