import 'dart:async';

import 'package:first_app/Intro%20Page.dart';
import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return splash_screenState();
  }
}
class splash_screenState extends State<splash_screen> with SingleTickerProviderStateMixin{
  late Animation _animation;
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animation = Tween(
      begin: 0.0,
      end: 30.0,
    ).animate(_animationController);
    _animationController.addListener(() {
      setState(() {

      });
    });
    _animationController.forward();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Intro_page(),));
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:Container(
       decoration: BoxDecoration(
         gradient: LinearGradient(
           colors: [
             Colors.grey.shade200,
             Colors.cyanAccent.shade100
           ],
           //     begin: FractionalOffset(0.0,1.1),
           // end: FractionalOffset(1.0,0.1)
         )
       ),
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
               'Thank You',
               style: TextStyle(fontSize: _animation.value,
                   fontFamily: 'FontHead',
                   fontWeight: FontWeight.w700,
               color: Colors.orangeAccent),
             ),
             SizedBox(
               height: 13,
             ),
             Text('Very Simple App',style: TextStyle(fontSize: _animation.value,
                 fontFamily: 'FontHead',
                 fontWeight: FontWeight.w700,
             color: Colors.orangeAccent
             ),)
           ],
         ),
       ),
     ) ,
   );
  }

}