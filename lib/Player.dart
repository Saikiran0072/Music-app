import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/Library.dart';
import 'package:musicappp/favorites.dart';
import 'package:musicappp/savedplaylist.dart';

import 'Mainpage.dart';



void main() {
  runApp(MaterialApp(
    home: Player(),
  ));
}
class Player extends StatelessWidget {
  const Player({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee()));
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      backgroundColor: Colors.cyan,
      body: Center(

        child: Container(
          margin: EdgeInsets.only(bottom: 0.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:4.0),
          height: 600.0,
              width: 500.0,

              child:Image.asset('assets/player.jpg'),

              ),
              Container(
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
            ]
          ),


          
        ),
      ),
    );
  }
}