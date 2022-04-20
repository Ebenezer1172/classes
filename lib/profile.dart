import 'package:classes/constant.dart';
import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.deepOrangeAccent,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttoncolor)
          ) ,
          child: const Text('Settings') ,
          onPressed: ()=>Navigator.pushNamed(context, '/settings'), ),
          ElevatedButton( child: 
          const Text('Back'),
          onPressed:()=>Navigator.pop(context, '/profile')),
          
          
      ],
    ),
      
    );
  }
}