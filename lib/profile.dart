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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(color: Colors.deepOrangeAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(buttoncolor)
                ) ,
                child: const Text('Settings') ,
                onPressed: ()=>Navigator.pushNamed(
                  context, '/settings'), ),
                ElevatedButton( child: 
                const Text('Back'),
                onPressed:()=>Navigator.pop(context, '/profile')
                ),
SizedBox(height: 56,width: 1000,
  child:   ElevatedButton(
  
          child:const Text('Go to log in page'),
  
          onPressed: (){
  
          Navigator.pushNamed(context, '/loginpage');
  },
),
),

            ],
          ),
            
          ),
          const SizedBox(height: 60,),
          Container(color: Colors.brown,
            child: Column(
              children: [const SizedBox(height: 50,),
                TextButton(child: const Text('shamshin') ,onPressed: (){}, ),
                const SizedBox(height: 50,)
              ],
            ),
            
          )
        ],
      ),
    );
    // const SizedBox(height: 8,),

    // Container(
    //   color:Colors.amber,
    //   child: TextButton(child: const Text('kcjcch'),onPressed: (){}, ),

    // );
  }
}