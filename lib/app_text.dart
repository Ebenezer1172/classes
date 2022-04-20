// import 'package:classes/constant.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color color; 
  final FontWeight fontWeight;
  

  const AppText(
      {Key? key,
      required this.text,
      this.fontsize = 25,
      this.color = Colors.grey,
      this.fontWeight = FontWeight.bold,
      
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
