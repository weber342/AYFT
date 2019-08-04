import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  final questions = const[
    {'questionText': 'Favorite Color?', 'answers': [
      {'text':'Black','score':3}, {'text':'Red','score':4}, {'text':'Green','score':9}, {'text':'Blue','score':2}
    ],},
    {'questionText': 'Favorite Animal?', 'answers': [
      {'text':'Puppy','score':3}, {'text':'Kitten','score':4}, {'text':'Bunny','score':9}, {'text':'Goat','score':2}
    ],},
    {'questionText': 'Favorite Instructor?', 'answers': [
      {'text':'Max','score':3}, {'text':'Max','score':4}, {'text':'Max','score':9}, {'text':'Max','score':2}
    ],},
  ];
  var questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz(){
    setState(() {
      questionIndex = 0;
      _totalScore = 0;

    });
  }

  void _answerQuestion(int score){
    _totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if(questionIndex < questions.length){
      print('We have more questions');
    }
  }

  @override
  Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("My AYFT"),),
        body: questionIndex < questions.length ? Quiz(_answerQuestion, questions, questionIndex)
            : Result(_totalScore, _resetQuiz),
    ));
  }
}
