import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tetris/utils/routes.dart';

import '../utils/db.dart';

class StartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Haha();

}

class _Haha extends State<StartPage> {
  int highscore = 0;

  //reference the hive box
  final highbox = Hive.box("HighScore_db");
  HighScoreDB db = HighScoreDB();

  @override
  void initState() {
    if (highbox.get("SCOREDB") == null) {
      db.createInitialData();
      highscore = db.score;
    } else {
      db.loadData();
      highscore = db.score;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/images.png', width: 100, height: 100,),
              Text(
                "Tetris Game",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              SizedBox(height: 20),
              Text(
                "Your High Score : $highscore",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Myroutes.homeRoute);
                },
                child: Text("Start game"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}