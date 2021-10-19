import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/Library.dart';
import 'package:musicappp/savedplaylist.dart';

import 'Mainpage.dart';



void main() {
  runApp(MaterialApp(
    home: Createplaylist(),
  ));
}
class Createplaylist extends StatelessWidget {
  const Createplaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 150.0),
              child: Text('Give Your Playlist a Name',
              style:TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,


              ),
              ),
            ),
            Container(

              margin: EdgeInsets.only(top: 20.0),

              child: Neumorphic(

                margin: EdgeInsets.fromLTRB(0, 0  , 30, 0),
                child: TextField(decoration: InputDecoration(
                  hintText: 'Playlist Name',
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan)
                  ),
                  fillColor: Colors.cyan,
                  filled: true,
                  border: UnderlineInputBorder(),
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,color: Colors.black
                  ),
                ),
                  cursorColor: Colors.black,


                ),
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                    depth: -8,
                    lightSource: LightSource.topLeft,
                    color: Colors.grey
                ),

              ),

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70.0),


                  child: Neumorphic(

                    child: RaisedButton.icon(
                      padding: EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 30.0),



                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Library()));} ,
                      color: Colors.cyan,

                      icon: Icon(Icons.close),
                      label: Text('Cancel',

                        style: TextStyle(

                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),



                    ),
                    style: NeumorphicStyle(


                      depth: 8,
                      lightSource: LightSource.topLeft,
                      color: Colors.cyan,
                      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                    ),


                  ),

                ),

                Container(
                  margin: EdgeInsets.only(top: 70.0),


                  child: Neumorphic(

                    child: RaisedButton.icon(
                      padding: EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 30.0),



                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Playlist()));} ,
                      color: Colors.cyan,

                      icon: Icon(Icons.arrow_forward_ios_sharp),
                      label: Text('Enter',

                        style: TextStyle(

                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),



                    ),
                    style: NeumorphicStyle(


                      depth: 8,
                      lightSource: LightSource.topLeft,
                      color: Colors.cyan,
                      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                    ),


                  ),

                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
