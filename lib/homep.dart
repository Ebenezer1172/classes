import 'package:flutter/material.dart';
// import 'package:country_picker/country_picker.dart';

class Settingd extends StatefulWidget {
  const Settingd({Key? key}) : super(key: key);

  @override
  State<Settingd> createState() => _SettingdState();
  
}

class _SettingdState extends State<Settingd> {
  bool value =false;
  @override
  Widget build(BuildContext context) {
    var start = MainAxisAlignment.start;
    CrossAxisAlignment.start;
    return Scaffold(
      

appBar: AppBar(
  title: const Text('Home'),
  actions: [
    IconButton(onPressed: (){}, icon: const Icon(Icons.balance))
  ],
  
),
// drawer: Drawer(
//   child: Row(
//     children: [
//       ListView(
//         children: const [

//         ],
//       )
//     ],
//   ),
// ),
      bottomNavigationBar:        
        BottomNavigationBar(items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home
                  ),
                  label: 'home',
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                 ),
                
             BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'qwerty',
                // backgroundColor: Color.fromARGB(255, 2, 17, 190),
                ),  
                 BottomNavigationBarItem(
                icon: Icon(Icons.mic),
                label: 'mic',
                // backgroundColor:  Color.fromARGB(255, 2, 17, 190),
                ),  
                BottomNavigationBarItem(
                icon: Icon(Icons.notifications,),
                label: 'Gift',
                // backgroundColor:  Color.fromARGB(255, 2, 17, 190),
                ),
              
                BottomNavigationBarItem(
                icon: Icon(Icons.person_sharp),
                label: 'Profile',
                backgroundColor:   Color.fromARGB(146, 0, 0, 0),
                ),
            ]),  
      body: Container(
        decoration: BoxDecoration(color: const Color.fromARGB(255, 229, 255, 0),
                borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Row(
          mainAxisAlignment: start,
          children:    [
Card(
child: Column(
children: const [
  ListTile(
    leading: Icon(Icons.money),
    title: Text('qwerty'),
  )
],
),
)

            // IconButton(onPressed: (){}, icon: const Icon(Icons.abc))
          ],
        ),
      ),
    );
  }
}
