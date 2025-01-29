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
  runApp(MaterialApp(
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey.shade900,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ))
          )
      ),
      debugShowCheckedModeBanner: false,
      title: "Application Quiz",
      home: const
      MyWidget(Colors.teal,40.0)
  ));
}
