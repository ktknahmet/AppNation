import 'package:flutter/material.dart';

class CustomTextStyle{
  TextStyle bold16(Color color){
    return TextStyle(
        fontFamily: "Bold",
        fontSize: 16,
        color: color,
        decoration: TextDecoration.none
    );
  }
  TextStyle medium11(Color color){
    return TextStyle(
        fontFamily: "Medium",
        fontSize: 11,
        color: color,
        decoration: TextDecoration.none
    );
  }
  TextStyle medium14(Color color){
    return TextStyle(
        fontFamily: "Medium",
        fontSize: 14,
        color: color,
        decoration: TextDecoration.none
    );
  }
  TextStyle thin13(Color color){
    return TextStyle(
        fontFamily: "Thin",
        fontSize: 13,
        color: color,
        decoration: TextDecoration.none
    );
  }
}