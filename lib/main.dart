/*
void main(){
  print("Hello World!!");
}
 */


/*
import 'package:flutter/widgets.dart';

void main(){
  runApp(
    const Center(
      child: Text("Hello World !!!",
      textDirection: TextDirection.ltr,),
    )
  );
}
*/

/*
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application Quiz",
      home: Material( //Widget générique
          color: Colors.teal,
          shape:
          RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0) ),
          child: const Center(
              child: Text(
                "Hello world !!",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 35.0,
                ),
              )))));
}
*/

import 'package:flutter/material.dart';
import 'UI/home.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application Quiz",
      home: MyWidget(Colors.teal,40.0,"Message du widget")
  ));
}
