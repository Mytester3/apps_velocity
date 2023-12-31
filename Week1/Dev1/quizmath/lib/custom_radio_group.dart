import 'package:flutter/material.dart';

class CustomRadioGroup extends StatefulWidget {
  CustomRadioGroup({
    required this.textA,
    required this.textB,
    required this.textC,
    required this.textD,
    required this.textCorrect,
    this.checkCorrect = false,
  });

  final String textA;
  final String textB;
  final String textC;
  final String textD;
  final String textCorrect;
  final bool checkCorrect;

  @override
  _CustomRadioGroupState createState() => _CustomRadioGroupState();
}

class _CustomRadioGroupState extends State<CustomRadioGroup> with AutomaticKeepAliveClientMixin{
  String selectedAnswer = "";

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: widget.checkCorrect
              ? widget.textCorrect == widget.textA
                  ? Colors.yellow
                  : Colors.transparent
              : Colors.transparent,
          child: RadioListTile(
            title: Text(widget.textA),
            value: widget.textA,
            groupValue: selectedAnswer,
            onChanged: (value) {
              setState(() {
                selectedAnswer = value!;
              });
            },
          ),
        ),
        Container(
          color: widget.checkCorrect
              ? widget.textCorrect == widget.textB
                  ? Colors.yellow
                  : Colors.transparent
              : Colors.transparent,
          child: RadioListTile(
            title: Text(widget.textB),
            value: widget.textB,
            groupValue: selectedAnswer,
            onChanged: (value) {
              setState(() {
                selectedAnswer = value!;
              });
            },
          ),
        ),
        Container(
          color: widget.checkCorrect
              ? widget.textCorrect == widget.textC
                  ? Colors.yellow
                  : Colors.transparent
              : Colors.transparent,
          child: RadioListTile(
            title: Text(widget.textC),
            value: widget.textC,
            groupValue: selectedAnswer,
            onChanged: (value) {
              setState(() {
                selectedAnswer = value!;
              });
            },
          ),
        ),
        Container(
          color: widget.checkCorrect
              ? widget.textCorrect == widget.textD
                  ? Colors.yellow
                  : Colors.transparent
              : Colors.transparent,
          child: RadioListTile(
            title: Text(widget.textD),
            value: widget.textD,
            groupValue: selectedAnswer,
            onChanged: (value) {
              setState(() {
                selectedAnswer = value!;
              });
            },
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
