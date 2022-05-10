// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Log-in'),
        actions: [IconButton( icon:const Icon(Icons.camera),onPressed: (){}, )],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 19, bottom: 0, left: 20),
                  child: Text('Sign-in',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        // fontFamily: GoogleFonts.inter().fontFamily,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF000000),
                      )),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text('Username'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: _username,
                        decoration: InputDecoration(
                          hintText: ('Username'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7)),
                          contentPadding:
                              const EdgeInsets.only(left: 8, right: 0),
                        ),
                        validator: (value) {
                          if (value == null) {
                            return null;
                          }
                          return 'mumu input something';
                        },
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text('Password'),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: _password,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: ('Password'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7)),
                          contentPadding:
                              const EdgeInsets.only(left: 8, right: 0),
                        ),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return  'mumu input something';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Center(
                    child: SizedBox(
                      height: 56,
                      width: 700,
                      child: ElevatedButton(
                        child: const Text('Log in'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/settings');
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
