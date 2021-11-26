import 'package:e_commerce/ArtistInfo.dart';
import 'package:e_commerce/Extract.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'favorites.dart';
import 'package:e_commerce/savedplaylist.dart';
import 'catogories.dart';
import 'colors.dart';
import 'Song.dart';
import 'package:provider/provider.dart';
import 'user.dart';

class Category extends StatelessWidget {
  static const String id = "category_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbgcolor ,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {

            Navigator.pushNamed(context, Song.id);},
          icon: Icon(Icons.arrow_back_ios_rounded,color:arrowcolor,),
        ),
        centerTitle: true,
        backgroundColor: appbarcolor,
      ),
      body:
      SingleChildScrollView(
        child: buildCategory(image: Provider.of<Data>(context,listen: false).images[Provider.of<Data>(context,listen:false ).i], song_name: Provider.of<Data>(context,listen: false).Songname, artist_name: Provider.of<Data>(context,listen: false).ArtistName),
      ),




    );
  }

}
