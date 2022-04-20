import 'package:flutter/material.dart';

class TextFieldd extends StatelessWidget {
final double borderRadius;
final String hintText;
final String labelText;
final TextEditingController textController;
final bool align;
final double paddingvertical;
final double paddinghorizontal;
final String shamshin;
final Color textColor;


  const TextFieldd({ Key? key,
  this.borderRadius =7,
  required this.textController,
  required this.hintText,
  required this.labelText,
  this.align=true,
  this.paddingvertical= 0,
  this.paddinghorizontal=10,
  this.shamshin='djjfjd',
  this.textColor=Colors.amberAccent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: paddingvertical,horizontal: paddinghorizontal),
        alignLabelWithHint: align,
        labelText: labelText,hintText: hintText,border: OutlineInputBorder(borderRadius: BorderRadius.circular(borderRadius)))
      
    );
  }
}