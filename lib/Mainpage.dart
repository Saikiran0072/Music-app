import 'dart:io';
import 'dart:math';

import 'package:e_commerce/ex.dart';
import 'package:e_commerce/profilepage.dart';
import 'package:e_commerce/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'Library.dart';
import 'catogories.dart';
import 'favorites.dart';
import 'options.dart';
import 'savedplaylist.dart';
import 'colors.dart';
import 'songslist.dart';
import 'Song.dart';
import 'package:provider/provider.dart';
import 'loginpage.dart';
import 'Extract.dart';


void main() {
  runApp(MaterialApp(
    home: Mainpagee(),
  ));
}
class Mainpagee extends StatefulWidget {
  static const String id = "mainpage_screen";

  @override
  State<Mainpagee> createState() => _MainpageeState();
}

class _MainpageeState extends State<Mainpagee> {
  var i=1;

  void changebanner() async {
    while(true){
      await new Future.delayed(Duration(seconds: 8));
      setState(() {
        i = Random().nextInt(7)+1;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changebanner();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFF1F2933),
      appBar: AppBar(
        backgroundColor:Color(0xFF323F4B),
        title: Text('MUSIC',
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xFFF5F7FA),
          ),
        ),
        leading: IconButton(onPressed: (){Navigator.pushNamed(context, Options.id);},
          icon: Icon(
            Icons.menu,
            color: Color(0xFF9AA5B1),

          ),),
        actions: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/default_img.jpg'),
              ),

              border: Border.all(
                width: 4,
                color: Color(0xFF9AA5B1),
              ),
            ),
          ),
        ],
      ),


      body: SingleChildScrollView(
        child: SafeArea(

          child:Column(
            children: [

              SizedBox(height: 30.0,),
//search bar
              Container(
                child: Neumorphic(
                  margin: EdgeInsets.fromLTRB(30.0, 0  , 30, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText:'Search for ...',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF9AA5B1)),
                      ),
                      fillColor: Color(0xFF9AA5B1),
                      filled: true,
                      border: UnderlineInputBorder(),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color(0xFFF5F7FA),
                      ),
                    ),
                    cursorColor: Colors.black,
                  ),
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                    depth: -8,
                    lightSource: LightSource.topLeft,
                    color: Color(0xFF9AA5B1),
                  ),
                ),
              ),
              SizedBox(height: 30.0,),

              //top containers
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(width: 10,),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 200.0,
                            width: 350.0,
                            color: containercolor,
                            child: Image.asset('images/banner$i.jpeg', fit: BoxFit.fill,height:200.0 ,
                              width: 300.0,
                            ),

                          ),
                        ),
                      ],
                    ),
                    SizedBox(width:15,),
                  ],
                ),
              ),


              //categories and view all buttons
              Row(
                children: [
                  SizedBox(height: 120.0,),
                  Container(
                    margin: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                    child: Icon(Icons.format_list_bulleted_sharp,
                      color: Color(0xFF9AA5B1),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text('Categories',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF5F7FA),

                      ),
                    ),
                  ),
                  SizedBox(width:60,),
                  Container(
                    child:Expanded(
                      child: RaisedButton(onPressed: (){Navigator.pushNamed(context, Categories.id);},
                        child: Text('View All',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF5F7FA),), ),
                        color: Color(0xFF52606D),
                        padding: EdgeInsets.only(top:10,bottom: 10),
                      ),
                    ),
                    padding: EdgeInsets.only(left: 40),
                  ),
                ],
              ),


              // genres
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    genre(image: 'images/default_img.jpg', songgenre:'POP' ),
                    genre(image: 'images/default_img.jpg', songgenre:'PARTY'),
                    genre(image: 'images/default_img.jpg', songgenre:'DANCE'),
                    genre(image: 'images/default_img.jpg', songgenre:'HIPHOP' ),
                    genre(image: 'images/default_img.jpg', songgenre:'ROCK' ),
                    genre(image: 'images/default_img.jpg', songgenre:'WORKOUT' )

                  ],
                )
              ),

//playmusic bar(mad love)
              SizedBox(height: 50.0,),
              Container(
                color: playmusiccolor,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                      height: 70.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/default_img.jpg',),
                        ),
                        border: Border.all(
                          width: 4,
                          color: Color(0xFF9AA5B1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: TextButton(
                        onPressed: (){Navigator.pushNamed(context, Song.id);},
                        child: Text('Infinity',
                          style: TextStyle(

                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF5F7FA),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: Icon(Icons.arrow_left,color: Color(0xFF9AA5B1),),
                    ),
                    ),
                    Expanded(child:
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Icon(Icons.pause,color: Color(0xFF9AA5B1),),
                    ),
                    ),

                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Icon(Icons.arrow_right,color: Color(0xFF9AA5B1),),
                    ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Icon(Icons.close,color: Color(0xFF9AA5B1),),
                    ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //bottom navigation bar
      bottomNavigationBar: Container(
        color: navigationbarcolor,
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [


            IconButton(

              icon: Icon(Icons.home, color: navigationbariconcolor),
              onPressed: () {
                Navigator.pushNamed(context, Mainpagee.id);

              },
            ),


            IconButton(

              icon: Icon(Icons.music_note, color: navigationbariconcolor),
              onPressed: () {
                Navigator.pushNamed(context, Library.id);

              },
            ),
            IconButton(

              icon: Icon(Icons.favorite, color: navigationbariconcolor),
              onPressed: () {
                Navigator.pushNamed(context, Favorites.id);

              },
            ),

            IconButton(

              icon: Icon(Icons.person, color: navigationbariconcolor),
              onPressed: () {
                Navigator.pushNamed(context, Profilepage.id);

              },
            ),
          ],
        ),
      ),

    );

  }
}

