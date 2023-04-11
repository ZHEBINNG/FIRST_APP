import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                             foregroundColor: MaterialStateProperty.all<Color>(Colors.white)
          ), 
          child: Text(answerText), 
          onPressed: (){selectHandler();},
          ),
    );
  }
}

//ElevatedButton(child: Text('Answer 2'), onPressed: ()=> print('Answer 2 chosen'),),
//ElevatedButton(child: Text('Answer 3'), onPressed:(){print('Answer 3 chosen');},),