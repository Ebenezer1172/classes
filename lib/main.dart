// ignore_for_file: prefer_const_constructors, prefer_final_fields

//  import 'dart:html';
// import 'package:flutter/cupertino.dart';
// import 'dart:html';

// import 'dart:ui';

// import 'dart:async';

// import 'package:classes/app_text.dart';
// import 'package:classes/copy.dart';
import 'package:classes/home.dart';
import 'package:classes/profile.dart';
import 'package:classes/settings.dart';
import 'package:classes/textfieldd.dart';
// import 'package:classes/textfieldd.dart';
// import 'package:classes/textfieldd.dart';
import 'package:flutter/material.dart';

//  import 'package:country_picker/country_picker.dart';
// import 'package:flutter/widgets.dart';
void main() {
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: 'BebasNeue',
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyHomePage(),
        '/home': (BuildContext context) => HomePage(),
        '/settings': (BuildContext context) => Settingd(),
        '/profile': (BuildContext context) => Profile(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _fulllegalname = TextEditingController();
  TextEditingController _fulllegalsurname = TextEditingController();
  TextEditingController _phonenumber = TextEditingController();
  TextEditingController _emailaddress = TextEditingController();
  TextEditingController _password = TextEditingController();
  String? myName;
  String myname = "create your account";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Colors.grey[300]),
      // appBar: AppBar(
      //   title: Text('create your account'),
      // ),
      resizeToAvoidBottomInset: false,
      
     
      drawer: Drawer(
        child: ListView(
          children: [
            ElevatedButton(
                child: Text('Home'),
                onPressed: () =>
                 Navigator.pushNamed
                 (context, '/home')),],),
),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white70,
            // border: Border.all(color: Color.fromARGB(255, 0, 0, 0),width:1),
            borderRadius: BorderRadius.all(Radius.circular(10)),

          ),
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
          child: (Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
              ),
              SizedBox(
                child: Text('Create your account',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,color: Colors.black87,
                    )),
              ),
             
              
              

              
              SizedBox(height: 25 ,
              ),
              Text('Full legal first and middle name(s)',style: TextStyle(color: Colors.grey),),
              TextFieldd(textController: _fulllegalname, hintText: 'Full legal first and middle name(s)',labelText: 'Full legal first and middle name(s)',),
              SizedBox(
                height: 25,
              ),
              Text("Full legal surname"),
             TextFieldd(textController: _fulllegalsurname, hintText: 'Full legal surname', labelText: 'Full legal surname') ,
              Text("Phone Number"),
              SizedBox(height: 25),
              TextField(
                controller: _phonenumber,
                decoration: InputDecoration(
                  enabled: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  alignLabelWithHint: true,
                  labelText: "Example:8180000000",
                  hintText: "Example:8180000000",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              SizedBox(height: 25),
              Text("Email address"),
              TextFieldd(textController: _emailaddress, hintText: 'Email adress', labelText: 'Email address'),
              SizedBox(height: 25),
              Text("Password"),
              TextFieldd(textController: _password, hintText: 'password', labelText: 'password'),
              Text('password'),
              
              SizedBox(height: 25),
              // floatingActionButton(FloatingActionButton:),
                Scaffold(
                floatingActionButton: (
                  widget
                ),
              ),
              Text('''I confirm the information provided 
correct as they appear on my legal
document'''),
            
              ElevatedButton(style: ButtonStyle(alignment: Alignment.bottomLeft ) ,
                  child: Text('$myName create your account'),
                  onPressed: () {
                    secondScreen();
                  }),
            ],
          )),
        ),

      ), 
    );
  }

  void secondScreen() async {
    final username = await Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => HomePage()));

    setState(() {
      myName = username;
    });
  }
}

void floatingActionButton(FloatingActionButton floatingActionButton) {}

// Scaffold(
//   body: Center(child: Container (
//     color: Colors.blueAccent,
//     alignment: Alignment.bottomLeft,
//   )
//   )
// )
 