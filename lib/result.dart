import 'package:flutter/material.dart';


class Result extends StatelessWidget{
  final Function selectHandler;
  final int resultScore;
  Result(this.resultScore, this.selectHandler);

  String get resultPhrase {
    String resultText;
    if(resultScore <=8){
      resultText = 'You are awesome!';
    }
    else if(resultScore <=12){
      resultText = 'Pretty Likeable!';
    }
    else{
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(children:<Widget>[Text(resultPhrase,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
    FlatButton(child: Text('Restart'), onPressed: selectHandler,)],
    ));
  }
}