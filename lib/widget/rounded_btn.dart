import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundedButton extends StatelessWidget{
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;


  RoundedButton({
    this.callBack,
    this.textStyle,
    this.bgColor,
    required this.btnName,
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      callBack!();
    }, child: icon!=null ? Container(
      width: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon!,
        Text(btnName, style: textStyle)
      ],
      ),
    ):Text(btnName,style: textStyle,),
        style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11)
          )
        ),
    );
  }

}


