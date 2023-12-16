// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import '../utils/db.dart';
import '../utils/routes.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  final highbox = Hive.box("HighScore_db");
  HighScoreDB db = HighScoreDB();

  int highscore = 1;

  @override
  void initState() {
    if (highbox.get("SCOREDB") == null) {
      db.createInitialData();
      highscore = db.score;
    } else {
      db.loadData();
      highscore = db.score;
    }
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 5),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(35, 41, 43, 1.0),
            Color.fromRGBO(35, 41, 43, 1.0),
          ])),
          child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white24,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "User",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.scoreboard,
                      color: Colors.white,
                      size: 24,
                    ),
                    title: Text(
                      "High Score: $highscore",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.help,
                      color: Colors.white,
                      size: 24,
                    ),
                    title: Text(
                      "About us",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onTap: () {
                      showBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (build) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              padding: EdgeInsets.all(16),
                              margin: EdgeInsets.only(top: kToolbarHeight),
                              child: ListView(
                                children: [
                                  IconButton(
                                      alignment: Alignment.topLeft,
                                      onPressed: () => Navigator.pop(context),
                                      icon: Icon(Icons.close)),
                                  Text(
                                    'About us',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                  const Text(
                                    """
                                    
Introducing "Tetris game" a captivating and modern twist on the classic Tetris game that promises an exhilarating gaming experience! Immerse yourself in this dynamic puzzle adventure where strategic thinking meets lightning-fast reflexes.

Embark on a journey through a visually stunning and ever-changing game environment that evolves as you progress. The game features a vibrant color palette, sleek graphics, and immersive sound effects that enhance the overall gaming atmosphere. The captivating backdrop reflects the diverse themes of each level, keeping players engaged and eager to discover what lies ahead.

"TetraMaster Challenge" introduces a variety of challenging game modes that cater to both casual players and seasoned Tetris veterans. Test your mettle in the "Classic Marathon" mode, where the goal is to achieve the highest score by strategically placing Tetriminos and clearing lines. For those seeking a more intense experience, the "Speed Blitz" mode will push your reflexes to the limit with rapidly falling Tetriminos, requiring lightning-fast decision-making.

In addition to the solo modes, "TetraMaster Challenge" offers a multiplayer option, allowing players to compete head-to-head or collaborate in exciting battles. Challenge your friends or connect with players worldwide to see who can achieve the highest score or survive the longest.

Unlock a plethora of customization options to personalize your gaming experience. Choose from a variety of Tetrimino styles, background themes, and soundtracks to tailor the game to your preferences. As you progress, earn in-game currency to unlock power-ups and special abilities that can turn the tide in your favor during challenging moments.

"TetraMaster Challenge" is not just a game; it's an immersive journey that combines the nostalgia of the classic Tetris with innovative gameplay mechanics and modern aesthetics. Get ready to experience the next level of Tetris excitement with "TetraMaster Challenge" – where strategy meets speed, and every move counts!
""",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 24,
                    ),
                    title: Text(
                      "Give a rating",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ))),
    );
  }
}
