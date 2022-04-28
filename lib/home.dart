// import 'dart:html';

// import 'package:classes/profile.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final  TextEditingController _user = TextEditingController();

  
 @override
  

  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.amberAccent,


      body: Container(
       decoration: BoxDecoration(
         color:const Color.fromARGB(0, 0, 0, 0) ,
          borderRadius: BorderRadius.circular(10)),
       margin: const EdgeInsets.symmetric(
         horizontal: 16,vertical: 32),
      child: Center(

          child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
     
    
            children: [
              TextField(
                controller: _user,
                decoration: const InputDecoration(labelText: 'User'),
                
                
                ),
               const  SizedBox(height: 40),              
           ElevatedButton(
             child:const Text('>Go Back<'),
           onPressed: (){Navigator.pop(context,_user.text);
           
          },

           ),
           ElevatedButton(
        child: const Text('Profile'),
        onPressed: () => (Navigator.pushNamed(context, '/profile')),
        ),
        ElevatedButton(child:
         const Text('click on this button'), 
         onPressed: (){Navigator.pushNamed(context,'/profile');} )
            ],            
      )       
      
      ),
      
      ),
    );
   
  }
}
 