import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'Library.dart';
import 'Mainpage.dart';
import 'favorites.dart';
import 'loginpage.dart';
import 'profilepage.dart';
import 'savedplaylist.dart';
import 'colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'main.dart';

void main() {
  runApp(MaterialApp(
    home: Options(),
  ));
}
class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {

  final  _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3E4C59),
      body:



      Column(

        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0,top: 40.0),
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/5.jpg'),
                  ),

                  border: Border.all(
                    width: 4,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              ),
              Expanded(
                child: Column(

                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30.0,top: 40.0),
                      child: Text('User Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: darkfontcolor,

                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 0.0),
                      child: Text('........',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: darkfontcolor,
                        ),

                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    child:IconButton(

                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee()));},
                      color: Colors.white,
                      icon: const Icon(Icons.close),
                      alignment: Alignment.topRight,
                    )),
              )

            ],
          ),
          SizedBox(height: 30.0,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                height: 60,
                width: 60,
                child: IconButton(

                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Profilepage()));} ,
                  color: navigationbariconcolor,
                  icon: const Icon(Icons.edit),



                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 30.0),

                child: Text('Edit Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: darkfontcolor,

                  ),
                ),
              ),


            ],
          ),
          SizedBox(height: 30.0,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                height: 60,
                width: 60,
                child: IconButton(

                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Library()));} ,
                  color: navigationbariconcolor,
                  icon: const Icon(Icons.headset),



                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 30.0),
                child: Text('Library',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: darkfontcolor,

                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 30.0,),

          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                height: 60,
                width: 60,
                child: IconButton(

                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorites()));} ,
                  color: navigationbariconcolor,
                  icon: const Icon(Icons.favorite),



                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 30.0),
                child: Text('Favorite',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: darkfontcolor,

                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0,),



          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                height: 60,
                width: 60,
                child: IconButton(

                  onPressed: () {} ,
                  color: navigationbariconcolor,
                  icon: const Icon(Icons.share),



                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 30.0),
                child: Text('Share your Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: darkfontcolor,

                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0,),



          Container(height: 40,
            width: 160,
            margin: EdgeInsets.only(left: 30.0),


            child: RaisedButton(
              onPressed: () {
                _auth.signOut();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));


                },
              child: Text('Log Out',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: darkfontcolor,

                  )
              ),
              color: containercolor,



            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),

            ),

          ),






        ],
      ),







    );

  }
}

