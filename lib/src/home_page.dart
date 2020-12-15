import 'package:flutter/material.dart';
import 'custom_dialog.dart';
import 'game_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<GameButton> buttonsList;
  List<int> player1 = <int>[];
  List<int> player2 = <int>[];
  int activePlayer = 1;

  List<GameButton> doInit(){
    player1 = <int>[];
    player2 = <int>[];
    final List<GameButton> _gameButtons = <GameButton>[
      GameButton(id: 1),
      GameButton(id: 2),
      GameButton(id: 3),
      GameButton(id: 4),
      GameButton(id: 5),
      GameButton(id: 6),
      GameButton(id: 7),
      GameButton(id: 8),
      GameButton(id: 9)
    ];
    return _gameButtons;
  }

  void playGame(GameButton gb){
    setState(() {
      if( activePlayer == 1 ){
        gb.text = 'X';
        gb.bg = Colors.redAccent;
        activePlayer  = 2;
        print(gb.id);
        player1.add(gb.id);
      }
      else
        {
          gb.text = '0';
          gb.bg = Colors.blueAccent;
          activePlayer = 1;
          player2.add(gb.id);
        }
      gb.enabled = false;
      checkWinner();
    });
  }

  void checkWinner(){
    int winner = -1;
    bool okP1;
    bool okP2;
    // ignore: always_specify_types
    final List<List<int>> possibilities = <List<int>>[[1, 5, 9], [3, 5, 7], [1, 2, 3], [4, 5, 6],
                                  // ignore: always_specify_types
                                  [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9]];
    for(int i = 0 ; i < 8 ; i++ ) {
      okP1 = true;
      okP2 = true;
      for (int j = 0; j < 3; j++) {
        if (!player1.contains(possibilities[i][j]))
          okP1 = false;
        if (!player2.contains(possibilities[i][j]))
          okP2 = false;
      }
      if(okP1) {
        winner = 1;
        break;
      }
      if(okP2){
        winner = 2;
        break;
      }
    }

    if(winner != -1){
      if(winner == 1){
        showDialog<bool>(
          context: context,
          builder: (_)=> CustomDialog('!___red player won___!',
              'press Reset button to start again',
              resetGame
          )
        );
      }
      else{
        showDialog<bool>(
            context: context,
            builder: (_)=> CustomDialog('!___blue player won___!',
                'press Reset button to start again',
                resetGame
            )
        );
      }
    }
    else{
      if(player1.length + player2.length == 9) // resets if no one won
        resetGame();
    }
  }

  void resetGame(){
    if(Navigator.canPop(context))
      Navigator.pop(context);
    setState(() {
      buttonsList = doInit();
    });

  }

  @override
  void initState() {
    super.initState();
    buttonsList = doInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(
        child: Text('Tic-Tac-Toe'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(10.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
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
                        ? () => playGame(buttonsList[i])
                        : null,
                    child: Text(
                      buttonsList[i].text,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                      ),
                    ),
                    color: buttonsList[i].bg,
                    disabledColor: buttonsList[i].bg,
                  ),
                ),
              ),
          ),
          RaisedButton(
            child: const Text(
              'Reset',
              style: TextStyle(
               color: Colors.white,
               fontSize: 20.0,
              ),
            ),
            color: Colors.blueAccent,
            padding: const EdgeInsets.all(20.0),
            onPressed: resetGame,
          ),
        ],
      ),
    );
  }
}
