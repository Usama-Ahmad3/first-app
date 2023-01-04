import 'package:flutter/material.dart';

TextStyle nTextStyle({Color TextColor= Colors.black, FontWeight fontWeight = FontWeight.normal})
{
  return TextStyle(
    fontSize: 20,
    color: TextColor,
    fontWeight: fontWeight,

  );
}
TextStyle mTextStyle50(){
  return const TextStyle(
    fontSize: 50,
  );
}