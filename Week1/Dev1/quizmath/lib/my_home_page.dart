
import 'package:flutter/material.dart';
import 'package:quizmath/quiz_page.dart';

import 'file_quiz.dart';
import 'logo_home.dart';
import 'help_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool animation = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1400), () {
      setState(() {
        animation = true;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.red,
            height: 0.5,
          ),
        ),
        backgroundColor: Color(0x59564ADB),
        title: const Text('Home'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpScreen()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: Icon(Icons.help),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background1.png'),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(margin: EdgeInsets.all(32), child: LogoHome()),
              if (animation)
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuizPage(
                                  listQuiz: FileQuiz.questionsBasic,
                                  title: "Basic",
                                )),
                      );
                    },
                    child: Text('Basic'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(56, 56),
                    ),
                  ),
                ),
              if (animation) SizedBox(height: 30),
              if (animation)
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuizPage(
                                  title: "Medium",
                                  listQuiz: FileQuiz.questionsMedium,
                                )),
                      );
                    },
                    child: Text('Medium'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(56, 56),
                    ),
                  ),
                ),
              if (animation) SizedBox(height: 30),
              if (animation)
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuizPage(
                                  title: "Challenging",
                                  listQuiz: FileQuiz.questionsChallenging,
                                )),
                      );
                    },
                    child: Text('Challenging'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(56, 56),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
