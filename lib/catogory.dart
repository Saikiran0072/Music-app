import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/Downloads.dart';

import 'package:musicappp/catogories.dart';
import 'package:musicappp/favorites.dart';
import 'package:musicappp/savedplaylist.dart';





class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories())); },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        title: Text('Categories'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body:
      SingleChildScrollView(
        child: Column(
            children:<Widget> [

              Container(

                height: 170,
                width: 150,
                decoration: BoxDecoration(

                    image: DecorationImage(
                      image: AssetImage('assets/4.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20)
                ),

              ),
              SizedBox(height: 15,),

              Column(
                children: [
                  Text('Dance Song ', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),

                  SizedBox(height: 5,),
                  Text('BTS',style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold
                  ),

                  ),
                ],
              ) ,
              //boxs
              SizedBox(height: 30,),
              Column(
                children:<Widget> [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Neumorphic(
                          child: Container(
                            height: 45,
                            width: 45,
                            color: Colors.cyan.shade600,
                            child: IconButton(
                              icon: Icon(Icons.favorite ,color: Colors.white, ),
                              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorites())); },
                            ),
                          ),
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                              depth: 8,
                              lightSource: LightSource.topLeft,
                              color: Colors.grey
                          ),
                        ),
                        SizedBox(width: 30,),
                        Text('like', style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600
                        ), )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Neumorphic(
                          child: Container(
                            height: 45,
                            width: 45,
                            color: Colors.cyan.shade600,
                            child: IconButton(
                              icon: Icon(Icons.hide_source ,color: Colors.white, ),
                              onPressed: () {  },
                            ),
                          ),
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                              depth: 8,
                              lightSource: LightSource.topLeft,
                              color: Colors.grey
                          ),
                        ),
                        SizedBox(width: 30,),
                        Text('Hide this song', style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600
                        ), )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 1,
                    width: 400,
                    color: Colors.white,
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Neumorphic(
                          child: Container(
                            height: 45,
                            width: 45,
                            color: Colors.cyan.shade600,
                            child: IconButton(
                              icon: Icon(Icons.download_outlined ,color: Colors.white, ),
                              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>Downloads())); },
                            ),
                          ),
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                              depth: 8,
                              lightSource: LightSource.topLeft,
                              color: Colors.grey
                          ),
                        ),
                        SizedBox(width: 30,),
                        Text('Offline Download', style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600
                        ), )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Neumorphic(
                          child: Container(
                            height: 45,
                            width: 45,
                            color: Colors.cyan.shade600,
                            child: IconButton(
                              icon: Icon(Icons.share_outlined ,color: Colors.tealAccent, ),
                              onPressed: () {  },
                            ),
                          ),
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                              depth: 8,
                              lightSource: LightSource.topLeft,
                              color: Colors.grey
                          ),
                        ),
                        SizedBox(width: 30,),
                        Text('Share Your Profile', style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600
                        ), )
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Neumorphic(
                          child: Container(
                            height: 45,
                            width: 45,
                            color: Colors.cyan.shade600,
                            child: IconButton(
                              icon: Icon(Icons.headset,color: Colors.yellowAccent, ),
                              onPressed: () {  Navigator.push(context, MaterialPageRoute(builder: (context)=>Playlist()));},
                            ),
                          ),
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                              depth: 8,
                              lightSource: LightSource.topLeft,
                              color: Colors.grey
                          ),
                        ),
                        SizedBox(width: 30,),
                        Text('Add to Playlist', style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600
                        ), )
                      ],
                    ),
                  ),

                ],
              ),


            ]
        ),
      ),




    );
  }
}

