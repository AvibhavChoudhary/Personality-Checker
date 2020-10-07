import "package:flutter/material.dart";

class AnswerButton extends StatelessWidget {
  final Function answerHandler;
  final String answerText;

  AnswerButton(this.answerHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container( 
          width: 250,
          height: 45,
          child: RaisedButton(padding: EdgeInsets.all(8),
            color: Colors.orangeAccent,
            highlightColor: Colors.amber,
            child: Text(answerText,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            onPressed: answerHandler,
          ),
        
        ),
      ),
    );
  }
}
