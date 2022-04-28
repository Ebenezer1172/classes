


import 'package:classes/home.dart';
import 'package:classes/loginpage.dart';
import 'package:classes/profile.dart';
import 'package:classes/settings.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: const [
        Locale('en'),
        Locale('el'),
        Locale.fromSubtags(languageCode: 'zh',scriptCode: 'Hans'),
        Locale.fromSubtags(languageCode: 'zh',scriptCode: 'Hant'),
      ],
      localizationsDelegates: const [
        CountryLocalizations.delegate,
        
        ],
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: 'BebasNeue',
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const MyHomePage(),
        '/home': (BuildContext context) => const HomePage(),
        '/settings': (BuildContext context) => const Settingd(),
        '/profile': (BuildContext context) => const Profile(),
        '/loginpage':(BuildContext context) => const LogInPage(),
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

final  TextEditingController _fulllegalname = TextEditingController();
 final TextEditingController _fulllegalsurname = TextEditingController();
 final TextEditingController _phonenumber = TextEditingController();
  final TextEditingController _emailaddress = TextEditingController();
  final TextEditingController _password = TextEditingController();
  String? myName;
  String myname = "create your account";
  int ninjaLevel = 0;
  bool value =false;
final _formKey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      
      appBar: AppBar(
        title: const Text('create your account'),
      ),
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
        child: Row(
          children:[ 
            ListView(
          children: [
            ElevatedButton(
                child: const Text('Home'),
                onPressed: () =>
                 Navigator.pushNamed
                 (context, '/home')
                 ),
                 ElevatedButton(
                   onPressed: ()
                   {Navigator.pushNamed
                   (context, '/settings');},
                    child: const Text('Settings')
                     ),
                   ElevatedButton(onPressed: ( ){
                     Navigator.pushNamed(context,'/profile');},
                      child: const Text('Profile')
                      )
                 ],
                 )
                 ],
                 ),
),
      body:
       SafeArea(
         child: SingleChildScrollView(
           child: 
            
              Container(
                decoration: BoxDecoration(color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
             child:
             
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[              
                       Padding(
                         padding: const EdgeInsets.only(
                           top: 32, bottom: 24, left: 33),
                         child: Text('Create your account', 
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            fontFamily: GoogleFonts.inter().fontFamily,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF000000),
                            )
                            ),
                       ),
                   
                
                     
                const Divider(color: Colors.black,height: 2,),
                const SizedBox(height: 15 ,
                ),
                
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal:32.0),
                 child:
                 Form( key: _formKey,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left:0,top:19),
                          child: Text('Full legal first and middle name(s)')
                        ),     
                        const SizedBox(height: 8,),
                                         
                         Column(crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                                 
                             TextFormField(
                             controller: _fulllegalname,
                             decoration: InputDecoration( 
                               hintText: ('Full legal first and middle name(s)'),
                                border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(7)
                                 ),
                                 contentPadding: const EdgeInsets.only(left: 8,right: 0),
                             ),
                             validator: (value){
                                 if (value== null ){
                               return null;
                                 }
                                 return  'mumu input something';
                               },
                             ),
                                
                                 const SizedBox(height: 8,),
                                         const Text('As it appears on your valid hID')                    
                           ],
                           
                         ),
                     
                                 const SizedBox(
                    height: 24,
                                 ),
                                 
                        const Text("Full legal surname"),
                                 TextFormField(
                               controller: _fulllegalsurname,
                               decoration: InputDecoration( 
                                 hintText: ('Full legal surname'),
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7)
                    ),
                                 
                    contentPadding: const EdgeInsets.only(left: 8,right: 0),
                                 
                               ),
                                 validator: (value){
                                 if (value== null ){
                                 return 'mumu input something';
                                 }
                                 return  'mumu input something';
                                 },
                                 ),
                                 
                                
                                 
                                 
                                const SizedBox(height: 8,),
                                
                                 Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [Padding(padding: EdgeInsets.only(left: 0),),
                      Text('As it appears on your valid ID',),
                    ],
                    
                                 ),
// Column(
//   children: const [
//     ListTile(
//       title: Text('Laftette'),
//       leading: Radio<SingingCharacter?>(value: value, groupValue: groupValue, onChanged: onChanged),
//     )
//   ],
// ),
                                const SizedBox(height: 24,),
                        const Text("Phone Number",),
                        const SizedBox(height: 8),
                        const Padding(padding: EdgeInsets.only(right: 0)),
                                 
                                 TextFormField(
                                 
                               controller: _phonenumber,
                                 
                               decoration: InputDecoration( 
                                 
                                 hintText: ('Example:8180000000'), border: OutlineInputBorder(
                                 
                    borderRadius: BorderRadius.circular(5)
                    ),
                                 
                    contentPadding: const EdgeInsets.only(left: 8,right: 0),
                                 
                               ),
                                 
                                 validator: (value){
                                 
                                 if (value == null ){
                                 
                               return 'dont be silly,type something';
                                 
                                 }
                                 
                                 return 'dont be silly,type something';
                                 
                                 },
                                 
                                 ),
                                 
                     
                        const SizedBox(height: 24),
                        const Text("Email address"   ),
                        const SizedBox(height: 8,),
                                 
                                 TextFormField(
                                 
                               controller: _emailaddress,
                                 
                               decoration: InputDecoration( 
                                 
                                 hintText: ('Email address'),
                                 
                   border: OutlineInputBorder(
                                 
                    borderRadius: BorderRadius.circular(7)),
                                 
                    contentPadding: const EdgeInsets.only(left: 8,right: 0),
                                 
                               ),
                                 validator: (value){
                               if(value==null){
                                 return 'your head is not correct';
                               }
                               return 'your head is not correct';
                                 },
                                 ),
                                 
                               
                        const SizedBox(height: 24,),
                        const Text('Password'),
                            const SizedBox(height: 8,),
                                 
                                 TextFormField(
                                 
                               controller: _password,
                                 obscureText: true,
                               decoration: InputDecoration( 
                                 
                                 hintText: ('Password'),
                                 
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7)
                    ), 
                    contentPadding: const EdgeInsets.only(left: 8,right: 0),
                                 
                               ),
                                 validator:(value){
                               if (value==null){
                                 return 'dumb MF fill the form';
                               }
                               return ' dumb MF fill the form';
                                 }
                                 ),
                                 Row(mainAxisAlignment:MainAxisAlignment.end,
                               children:[
                                 SizedBox(
                                   child: FloatingActionButton(
                                                     child: const Icon(
                                                       Icons.message_sharp),
                                                     backgroundColor: Colors.black87, 
                                                     onPressed: (){
                                                        setState(() {
                                                           ninjaLevel += 1;
                                                         });
                                                     }),
                                 ),
                               ],),
                                 SizedBox(height: 56,width: 1000,
                               child:   ElevatedButton(onPressed: (() {
                               
                                if (_formKey.currentState! .validate()) {
                               
                   ScaffoldMessenger.of(context).showSnackBar(
                     const SnackBar(content: Text('processing Data'),));
                               
                                }
                               
                               }
                               
                               ), child: const Text('create account')
                               
                               ),
                                 ),    
                                 
                                
                               Padding(
                                 padding: const EdgeInsets.only(
                    top: 0,bottom: 24,left: 0,),
                                 child: ListTile(
                    leading:
                     Checkbox(
                       value: false,
                     onChanged:(value){                   
                        }),
                                 
                                 
                   title: const Text('''I confirm the information provided 
                                 correct as they appear on my legal
                                 document''',style: TextStyle(
                               fontWeight: FontWeight.w300
                               ),
                                 ),           
                             
                                 ),
                               ),
                               // Text('$ninjaLevel'),
                               const SizedBox(height: 8,),
                               Center(
                                 child: 
                                 SizedBox(width: 1000 ,height: 56,
                    child: ElevatedButton(
                      style:ButtonStyle(
                        backgroundColor: 
                         MaterialStateProperty.all<Color>(
                           const Color(0xFFDCDCDC)), ),
                        child: const Text('Create your account',
                        style: TextStyle(fontSize: 16 ),),
                        
                        onPressed: () {
                          secondScreen();
                        })
                        
                                 
                        
                                 ),
                               ),
                       const SizedBox(height: 38,),
                      ]
                      
                      ),
                 ),
              ),
                       
              ]),
              ),
       
          
           ),
       ),


);
  }

  void secondScreen() async {
    final username = await Navigator.push(
      context,
        MaterialPageRoute(
          builder: (
            BuildContext context)
             => const HomePage()
             )
             );
    setState(() {
      myName = username;
    });
  }
}
