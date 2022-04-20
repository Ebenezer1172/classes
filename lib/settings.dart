import 'package:flutter/material.dart';
// import 'package:country_picker/country_picker.dart';

class Settingd extends StatefulWidget {
  const Settingd({ Key? key }) : super(key: key);

  @override
  State<Settingd> createState() => _SettingdState();
}

class _SettingdState extends State<Settingd> {
  @override
  Widget build(BuildContext context) {
    var start = MainAxisAlignment.start;
    return Container(color: Colors.yellowAccent,
    child:Row(
      mainAxisAlignment: start,
    
      children: [
        ElevatedButton(child:
        const Icon(Icons.arrow_back),
        // const Text('back'),
        
        onPressed:(){Navigator.pop(context,'profile' );}, )
      ],
    ),
    );
  }
}
