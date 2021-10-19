import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/Addsong.dart';
import 'package:musicappp/Library.dart';

import 'Mainpage.dart';



void main() {
  runApp(MaterialApp(
    home: Playlist(),
  ));
}
class Playlist extends StatelessWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee()));
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        actions: [
          Container(
            height: 45,
            width: 45,
            color: Colors.cyan.shade600,
            child: IconButton(
              icon: Icon(Icons.more_vert ,color: Colors.white, ),
              onPressed: () {  },
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30.0),
              height: 200.0,
              width: 200.0,
              child: Neumorphic(
              child: Image.asset('assets/4.png'),
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                    depth: -8,
                    lightSource: LightSource.topLeft,
                    color: Colors.grey
                ),
            ),
            ),
            SizedBox(height: 30.0,),
            Container(
              child: Text('My Playlist',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white,
                ),

              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              child: Text('By Suman',
                style: TextStyle(

                  fontSize: 15.0,
                  color: Colors.white,
                ),


              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              child: Text("Let's find some Songs " ,
                style: TextStyle(

                  fontSize: 25.0,
                  color: Colors.white,
                ),


              ),

            ),
            SizedBox(height:30.0),
            Container(

              child: Neumorphic(
                child: RaisedButton(
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Addsong()));},
                  color: Colors.cyan,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Add Song',

                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                    depth: 8,
                    lightSource: LightSource.topLeft,
                    color: Colors.grey
                ),
              ),
            ),
          ],
        ),

      )
    );
  }
}
