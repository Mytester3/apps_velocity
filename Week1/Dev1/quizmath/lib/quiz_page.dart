import 'dart:math';

import 'package:flutter/material.dart';

import 'custom_radio_group.dart';
import 'file_quiz.dart';

class QuizPage extends StatefulWidget {
  QuizPage({
    required this.listQuiz,
    required this.title,
  });

  final List<Question> listQuiz;
  final String title;

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage>
    with SingleTickerProviderStateMixin {
  bool _showCorrectAnswers = false;
  bool isCheckCorrect = false;

  @override
  void initState() {
    widget.listQuiz.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x59564ADB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.red,
            height: 0.5,
          ),
        ),
        title: Text("${widget.title} Game"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Quiz',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: MediaQuery.of(context).size.height - 300,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.listQuiz.length,
                  itemBuilder: (BuildContext context, int index) {
                    final question = widget.listQuiz[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Question ${index + 1}: ${question.question}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        CustomRadioGroup(
                          textCorrect: question.correctAnswer,
                          textA: question.options[0],
                          textB: question.options[1],
                          textC: question.options[2],
                          textD: question.options[3],
                          checkCorrect: isCheckCorrect,
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: isCheckCorrect
            ? ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: Text("Close"),
              )
            : ElevatedButton(
                onPressed: () {
                  setState(() {
                    isCheckCorrect = true;
                    showDialog(
                        context: context,
                        builder: (_) {
                          return QuizCompletionDialog(
                            message:
                                "Congratulations, you have finished the quiz, see the answers",
                          );
                        });
                  });
                },
                child: Text("Finish Quiz"),
              ),
      ),
    );
  }
}

class QuizCompletionDialog extends StatelessWidget {
  final String message;

  QuizCompletionDialog({required this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Complete the quiz'),
      content: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(message),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}
