import 'package:e_commerce/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '2nd page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:e_commerce/Mainpage.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final  _auth = FirebaseAuth.instance;
  late User loggedInUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbgcolor,

      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              SizedBox(height: 100.0,),
              Center(
                child: Container(
                  height: 300.0,
                  width: 300.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset('images/final_logo_mainpage.jpeg',
                      height:200.0 ,
                      width: 300.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),



              Column(
                children: <Widget>[
                  SizedBox(height: 50.0,),
                  Center(
                    child: IconButton(

                      icon: Icon(Icons.music_note_outlined, color: arrowcolor, size: 30,),
                      onPressed: () async {
                        final user = await _auth.currentUser;
                        if (user != null) {
                          loggedInUser = user;
                          print(user.email);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Mainpagee()));
                          
                        }
                        else{
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                        }
                      }
                    ),
                  ),
                  Container(
                    child: Text('Welcome to SHUFFLE',
                      style:  TextStyle(
                        color: arrowcolor,
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                      ),

                    ),
                  ),


                ],
              ),
            ],
          ),
        ),
      ),

    );



  }
}








