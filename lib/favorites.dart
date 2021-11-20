import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'Library.dart';
import 'Mainpage.dart';
import 'colors.dart';
import 'Extract.dart';
import 'Song.dart';



void main() {
  runApp(MaterialApp(
    home: Favorites(),
  ));
}
class Favorites extends StatefulWidget {
  static const String id = "favorites_screen";


  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  void newval= iconcolor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbgcolor,
      appBar: AppBar(
        title: Center(
          child: Text('Favorites',
            style: TextStyle(
              color: darkfontcolor,


            ),),),

        backgroundColor: appbarcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, Mainpagee.id);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: arrowcolor,
          ),

        ),
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 0.0),
              child: Column(
                children: <Widget> [
                  SizedBox(height: 70,),
                  Favorite(image: "images/default_img.jpg", song_name: "song name", artist_name: "artist name"),
                  SizedBox(height:20,),
                  Favorite(image: "images/default_img.jpg", song_name: "song name", artist_name: "artist name"),
                  SizedBox(height:20,),
                  Favorite(image: "images/default_img.jpg", song_name: "song name", artist_name: "artist name"),
                  SizedBox(height:20,),
                  Favorite(image: "images/default_img.jpg", song_name: "song name", artist_name: "artist name"),
                  SizedBox(height:20,),
                  Favorite(image: "images/default_img.jpg", song_name: "song name", artist_name: "artist name"),
                  SizedBox(height:20,),
                  Favorite(image: "images/default_img.jpg", song_name: "song name", artist_name: "artist name"),
                  SizedBox(height:20,),




                ],
              ),
            ),

          ),
        ),

      ),
    );


  }
}
