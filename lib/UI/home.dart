import 'package:flutter/material.dart';
import '../modele/question.dart';
import 'myButtons.dart';

class MyWidget extends StatefulWidget {

  final Color color;
  final double textsize;
  // final String message;
  const MyWidget(this.color,this.textsize);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  int _currentQuestion=0;
  final List _questions = [
    Question.name("The question number 1 is a very long question and her answer is true.", true, "images/flag.png"),
    Question.name("The question number 2 is true again.", true, "images/img.png"),
    Question.name("The question number 3 is false.", false, "images/img.png"),
    Question.name("The question number 4 is false again.", false, "images/flag.png"),
    Question.name("The question number 5 is true.", true, "images/flag.png"),
    Question.name("The question number 6 is true again.", true, "images/img.png"),
  ];

  @override
  Widget build(BuildContext context) {

    /*
    final ButtonStyle myButtonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.blueGrey.shade900,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        )
    );
    */

    return Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        backgroundColor: widget.color,
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Image.asset(_questions[_currentQuestion].image,width: 250,height: 180,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,style: BorderStyle.solid
                    )
                  ),
                  height:150.0,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child:Text(
                      _questions[_currentQuestion].questionText,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: widget.textsize,
                      ),
                    )
                  )
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: ()=> _previousQuestion(),
                        child: const Icon(Icons.arrow_back, color:
                        Colors.white,),
                      ),
                      MyTextButton(
                          myText: "TRUE", myValue: true, returnValue: _handleValue
                      ),
                      MyTextButton(
                          myText: "FALSE", myValue: false, returnValue: _handleValue
                      ),
                      ElevatedButton(onPressed: ()=> _nextQuestion(),
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

  _previousQuestion() {
    setState(() {
      _currentQuestion = (_currentQuestion-1)%_questions.length;
    });
  }

  void _handleValue(bool choice) {
    debugPrint(choice.toString());
    if (choice == _questions[_currentQuestion].isCorrect){
      debugPrint("good");
      const mySnackBar = SnackBar(
        content: Text("GOOD ANSWER!!!",style: TextStyle(fontSize: 20)),
        duration: Duration(milliseconds: 500),
        backgroundColor: Colors.lightGreen,
        width: 180.0, // Width of the SnackBar.
        padding: EdgeInsets.symmetric(
          horizontal: 8.0, // Inner padding for SnackBar content.
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
    }else{
      debugPrint("bad");
      const mySnackBar = SnackBar(
        content: Text("BAD ANSWER!!!",style: TextStyle(fontSize: 20),),
        duration: Duration(milliseconds: 500),
        backgroundColor: Colors.red,
        width: 180.0, // Width of the SnackBar.
        padding: EdgeInsets.symmetric(
          horizontal: 8.0, // Inner padding for SnackBar content.
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
    }
    _nextQuestion();
  }

  _nextQuestion() {
    setState(() {
      _currentQuestion = (_currentQuestion+1)%_questions.length;
    });
  }
}