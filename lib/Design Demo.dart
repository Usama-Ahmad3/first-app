import 'package:first_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class design_demo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Design Demo'),
      ),
      body: Column(
        children: [
          Header(),
          Middle(),
          bottom(),
          tobo()
        ],
      ),
    );
  }

}