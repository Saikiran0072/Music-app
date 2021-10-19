import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/favorites.dart';
import 'package:musicappp/playlist.dart';
import 'package:musicappp/savedplaylist.dart';

import 'Mainpage.dart';



void main() {
  runApp(MaterialApp(
    home: Library(),
  ));
}
class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,

      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee()));
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        title: Text('Your Library'),
        centerTitle: true,
        backgroundColor: Colors.cyan,

        actions: [
          Container(
            height: 45,
            width: 45,
            color: Colors.cyan.shade600,
            child: IconButton(
              icon: Icon(Icons.add ,color: Colors.white, ),
              onPressed: () {  Navigator.push(context, MaterialPageRoute(builder: (context)=>Createplaylist()));},
            ),
          ),

        ],

      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 250.0),
              child: Text(
                'Add Music',
              style:TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,

              ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),

              child: Text(
                'collect you favorite Music',
                style:TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,


                ),
              ),
            ),
            Container(


              child: Text(
                'Whenever you want ',
                style:TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,


                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 260.0),
              child: Neumorphic(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(

                      height: 60,
                      width: 60,
                      child: Neumorphic(

                        child: IconButton(

                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee()));} ,
                          color: Colors.white,
                          icon: const Icon(Icons.home),



                        ),
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Colors.cyan
                        ),


                      ),

                    ),
                    Container(

                      height: 60,
                      width: 60,
                      child: Neumorphic(

                        child: IconButton(

                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Playlist()));} ,
                          color: Colors.white,
                          icon: const Icon(Icons.music_note),



                        ),
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Colors.cyan
                        ),


                      ),

                    ),
                    Container(

                      height: 60,
                      width: 60,
                      child: Neumorphic(

                        child: IconButton(

                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorites()));} ,
                          color: Colors.white,
                          icon: const Icon(Icons.favorite),



                        ),
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Colors.cyan
                        ),


                      ),

                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                      height: 60,
                      width: 60,
                      child: Neumorphic(

                        child: IconButton(

                          onPressed: () {} ,
                          color: Colors.white,
                          icon: const Icon(Icons.person),



                        ),
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Colors.cyan
                        ),


                      ),

                    ),

                  ],
                ),
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                    depth: 8,
                    lightSource: LightSource.topLeft,
                    color: Colors.cyan
                ),
              ),

            ),
          ],
        )
      ),

    );
  }
}
