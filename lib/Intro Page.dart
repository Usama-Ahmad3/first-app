
import 'package:first_app/main.dart';
import 'package:flutter/material.dart';

class Intro_page extends StatefulWidget{
  @override
  State<Intro_page> createState() => _Intro_pageState();
}

class _Intro_pageState extends State<Intro_page> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  var ListArr = [150.0,200.0,250.0,300.0,350.0];
  @override
  void initState() {
     super.initState();
     _animationController = AnimationController(vsync: this, duration: Duration(seconds: 5));
     _animationController.addListener(() {
       setState(() {

       });
     });
     _animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Intro Page'),
    ),
    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.greenAccent.shade100,Colors.blue.shade100
          ]
        )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome',style: TextStyle(fontSize: 50,fontFamily: 'FontHead',fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 15,
                ),
              Stack(
                alignment: Alignment.center,
                children: [
                  buildC(ListArr[0]),
                  buildC(ListArr[1]),
                  buildC(ListArr[2]),
                  buildC(ListArr[3]),
                  buildC(ListArr[4]),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => Working_Area(),));
                  }, child: Text('Next'))
                ],
              )
              ],
            ),
        ),
      ),
  );
  }
  Widget buildC(radius){
    return Container(
      width: radius*_animationController.value,
      height: radius*_animationController.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.lime.withOpacity(1.0 - _animationController.value)
      ),
    );
  }
}