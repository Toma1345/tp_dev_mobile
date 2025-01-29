import 'package:flutter/material.dart';
import '../modele/question.dart';

class MyWidget extends StatelessWidget {

  final Color color;
  final double textsize;
  final String message;
  const MyWidget(this.color,this.textsize,this.message);

  /*
  @override
  Widget build(BuildContext context) {
    return Material(
        color: color,
        shape:
        RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0) ),
        child: Center(
          child: Text(
          message,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: textsize,
          ),
        )));
  }
   */

  @override
  Widget build(BuildContext context) {

    int _currentQuestion=0;
    final List _questions = [
      Question.name("The question number 1 is a very long question and her answer is true.", true, "flag.png"),
      Question.name("The question number 2 is true again.", true, "img.png"),
      Question.name("The question number 3 is false.", false, "img.png"),
      Question.name("The question number 4 is false again.", false, "flag.png"),
      Question.name("The question number 5 is true.", true, "flag.png"),
      Question.name("The question number 6 is true again.", true, "img.png"),
    ];

    final ButtonStyle myButtonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.blueGrey.shade900,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        )
    );

    return Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        backgroundColor: color,
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Image.asset("images/flag.png",width: 250,height: 180,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,style: BorderStyle.solid
                    )
                  ),
                  height:120.0,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child:Text(
                      message,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: textsize,
                      ),
                    )
                  )
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: ()=> _previousQuestion(),
                        style: myButtonStyle,
                        child: const Icon(Icons.arrow_back, color:
                        Colors.white,),
                      ),
                      ElevatedButton(onPressed: ()=> _checkAnswer(true),
                        style: myButtonStyle,
                        child: const Text("TRUE",style: TextStyle(color:
                        Colors.white)),
                      ),
                      ElevatedButton(onPressed: ()=> _checkAnswer(false),
                        style: myButtonStyle,
                        child: const Text("FALSE",style: TextStyle(color:
                        Colors.white)),
                      ),
                      ElevatedButton(onPressed: ()=> _nextQuestion(),
                        style: myButtonStyle,
                        child: const Icon(Icons.arrow_forward, color:
                        Colors.white,),
                      ),
                    ]
                ),
              ]
            )
        )
    );
  }

  _previousQuestion() {}

  _checkAnswer(bool bool) {}

  _nextQuestion() {}
}