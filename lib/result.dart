import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandle;
  Result(this.resultScore, this.resetHandle);

  String get resultPhrase{
    var resultText = 'You did it!';
    if(resultScore <= 8){
      resultText = 'You are awesome and innocent!';
    }else if(resultScore <= 12){
      resultText = 'Pretty likeable!';
    }else if(resultScore <= 16){
      resultText = 'You are ... strange?!';
    }else{
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
     child: Column(
       children: <Widget>[
         Text(
         resultPhrase,
         style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,),
                textAlign: TextAlign.center,
         ),
         TextButton(onPressed: (){resetHandle();} , child: Text('Restart Quiz'), style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),))
       ],
     ),
      );
  }
}