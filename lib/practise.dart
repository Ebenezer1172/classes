import 'package:classes/textfieldd.dart';
import 'package:flutter/material.dart';

  
class Practise extends StatelessWidget {
final  TextEditingController _fulllegalname = TextEditingController();
   Practise({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(title: const Text('create your account'),),
      const  Divider(endIndent: double.infinity,),
        TextFieldd(textController:_fulllegalname, hintText: 'Full legal and ', labelText: 'Full legal and ')
      ],
    );
  }
}