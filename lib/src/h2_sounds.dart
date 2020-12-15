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
      theme: ThemeData(
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
    final List<AudioButton> _audioButtons = <AudioButton>[
      AudioButton(text: 'Salut'),
      AudioButton(text: 'Salut', language: true),
      AudioButton(text: 'Ma numesc'),
      AudioButton(text: 'Ma numesc', language: true),
      AudioButton(text: 'Cum esti?'),
      AudioButton(text: 'Cum esti?', language: true),
      AudioButton(text: 'Sunt bine'),
      AudioButton(text: 'Sunt bine', language: true),
    ];
    return _audioButtons;
  }

  void onPlayAudio(String fileName){
    //AssetsAudioPlayer audioCache = AssetsAudioPlayer();
    //audioCache.open(Audio('sounds/$fileName.mp3'));
    final AudioCache player = AudioCache();
    player.play('$fileName.mp3');
  }

  @override
  void initState() {
    super.initState();
    buttonsList = doInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sunete'),
        centerTitle: true,
      ),
      body: Center(
        child:
        GridView.builder(
          padding: const EdgeInsets.all(10.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            crossAxisSpacing: 9.0,
            mainAxisSpacing: 9.0,
          ),
          itemCount: buttonsList.length,
          itemBuilder: (BuildContext context,int i) => SizedBox(
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
                  style: const TextStyle(
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

