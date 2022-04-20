

// ignore_for_file: prefer_const_constructors, prefer_final_fields

//  import 'dart:html';
// import 'package:flutter/cupertino.dart';
// import 'dart:html';

// import 'dart:ui';

// import 'dart:async';

import 'package:classes/app_text.dart';
import 'package:classes/home.dart';
import 'package:classes/profile.dart';
import 'package:classes/settings.dart';
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
        fontFamily: 'BebasNeue',
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
      backgroundColor: (Colors.grey[700]),
      // appBar: AppBar(
      //   title: Text('create your account'),
      // ),
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: () {},
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ElevatedButton(
                child: Text('Home'),
                onPressed: () => Navigator.pushNamed(context, '/home')),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white70,
            // border: Border.all(color: Color.fromARGB(255, 0, 0, 0),width:1),
            borderRadius: BorderRadius.all(Radius.circular(10)),

          ),
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Divider(
                color: Colors.grey,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(0),
              //   child: Text("create your account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),),
              // ),
              AppText(text: "Full legal first and middle name(s)"),
              SizedBox(
                width: 0,
              ),
              TextField(
                controller: _fulllegalname,
                decoration: InputDecoration(
                  hintText: "Full legal first and middle name(s)",
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Full legal surname"),
              TextField(
                controller: _fulllegalsurname,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  alignLabelWithHint: true,
                  labelText: "Full legal surname",
                  hintText: "Full legal surname",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7)),
                ),
              ),
              Text("Phone Number"),
              SizedBox(height: 10),
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
              SizedBox(height: 10),
              Text("Email address"),
              TextField(
                controller: _emailaddress,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  alignLabelWithHint: true,
                  labelText: "Email address",
                  hintText: "Email address",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7)),
                ),
              ),
              SizedBox(height: 10),
              Text("Password"),
              TextField(
                obscureText: true,
                controller: _password,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  labelText: "Password",
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7)),
                ),
              ),
              Text('password'),
              SizedBox(height: 10),
              
              // TextField(
              // TextFieldd(hintText: "ujdjdj", labelText: "jdkkf")),
              
              Text('''I confirm the information provided 
              correct as they appear on my legal
document'''),
              // Scaffold(
              //   floatingActionButton: (
              //     widget
              //   ),
              // )
              ElevatedButton(
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
