import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'Library.dart';
import 'colors.dart';
import 'savedplaylist.dart';
import 'Mainpage.dart';



void main() {
  runApp(MaterialApp(
    home: Createplaylist(),
  ));
}
class Createplaylist extends StatelessWidget {
  static const String id = "playlist_screen";
  const Createplaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F2933),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 150.0),
              child: Text('Give Your Playlist a'
                  ' Name',
                style:TextStyle(
                  color: darkfontcolor,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,


                ),
              ),
            ),
            SizedBox(height: 50.0,),
            Container(

              margin: EdgeInsets.only(top: 20.0,left: 20.0),

              child: Neumorphic(

                margin: EdgeInsets.fromLTRB(0, 0  , 30, 0),
                child: TextField(decoration: InputDecoration(
                  hintText: 'Playlist Name' ,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:navigationbariconcolor),
                  ),
                  fillColor: Color(0xFF9AA5B1),
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


                  child: RaisedButton.icon(
                    padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),



                    onPressed: () {Navigator.pushNamed(context, Library.id);} ,
                    color: containercolor,


                    label: Text('Cancel',

                      style: TextStyle(

                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: darkfontcolor,
                      ),
                    ),
                    icon: Icon(Icons.close,color: navigationbariconcolor,),



                  ),

                ),

                Container(
                  margin: EdgeInsets.only(top: 70.0),


                  child: RaisedButton.icon(
                    padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),



                    onPressed: () {Navigator.pushNamed(context, Playlist.id);} ,
                    color: containercolor,


                    label: Text('Save',

                      style: TextStyle(

                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: darkfontcolor,
                      ),
                    ),
                    icon: Icon(Icons.check,color: navigationbariconcolor,),



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
