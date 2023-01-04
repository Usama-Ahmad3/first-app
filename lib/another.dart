import 'package:flutter/material.dart';

class richtext extends StatelessWidget{
  var pass;
  richtext(this.pass);

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('You Pressed $pass'),
    ),
  body: Container(
    decoration:BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.deepOrange.shade100,
          Colors.teal.shade100,
        ]
      )
    ),
    child: Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            style: TextStyle(color: Colors.cyan,fontSize: 20),
            children: [
              TextSpan(text: 'Hello ',style: TextStyle(color: Colors.teal)),
              TextSpan(text: 'World! ',
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.limeAccent)
              ),
              TextSpan(text: 'Welcome To Web '),
              TextSpan(text: ' Flutter',
                  style: TextStyle(fontSize: 40,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'FontHead'
                  ))
            ]
        ),
      ),
    ),
  ),);
}

}
