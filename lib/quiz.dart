import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget{
  final Function answerQuestion;
  List<Map<String,Object>> questions;
  int questionIndex;

  Quiz(@required this.answerQuestion, @required this.questions, @required this.questionIndex);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children:[
    Question(questions[questionIndex]['questionText']),
    ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer){
    return Answer(() => answerQuestion(answer['score']), answer['text']);
    }).toList()
    ]);
  }
}