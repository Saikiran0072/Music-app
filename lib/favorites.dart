import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'Library.dart';
import 'Mainpage.dart';
import 'colors.dart';
import 'Extract.dart';
import 'Song.dart';
import 'ex.dart';
import 'package:provider/provider.dart';
import 'user.dart';
import 'songslist.dart';


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
            Navigator.pushNamed(context, Songlist.id);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: arrowcolor,
          ),

        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30),
            child: Favorite_page(favdata: Provider.of<Data>(context).favList, albumdata: Provider.of<Data>(context).id_datalist, followdata: Provider.of<Data>(context).artist_follow,))

      ),
    );


  }
}
