import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ArtistInfo.dart';
import 'loginpage.dart';
import 'colors.dart';
import 'package:e_commerce/Mainpage.dart';
import 'Song.dart';
import 'Extract.dart';
import 'package:provider/provider.dart';
import 'user.dart';

class Songlist extends StatefulWidget {
  static const String id = "songlist_screen";

  @override
  State<Songlist> createState() => _SonglistState();
}

class _SonglistState extends State<Songlist> {

  Future songData() async{
    Provider.of<Data>(context).getData();
  }
  
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldbgcolor,
        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: appbarcolor,
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Mainpagee.id);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_rounded, color: arrowcolor,),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(bottom: 20, left: 10),
                  width: 500,
                  height: 150,
                  color: appbarcolor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text("xxxxx tracks",
                          style: TextStyle(
                            color: darkfontcolor,
                            fontSize: 40,
                          ),),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            child: Text("xxxx likes", style: TextStyle(
                                color: darkfontcolor, fontSize: 15),),
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 10),

                          ),
                          Container(
                            child: Text("Duration", style: TextStyle(
                                color: darkfontcolor, fontSize: 15),),
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 30, right: 130),

                          ),
                          Icon(Icons.favorite_outline,
                            color: navigationbariconcolor, size: 30,)
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildSong(
                          image: "images/default_img.jpg", song_name: "song1", artist_names: "Artist names",),
                      SizedBox(height: 20,),
                      buildSong(
                          image: "images/default_img.jpg", song_name: "song2", artist_names: "Artist names",),
                      SizedBox(height: 20,),
                      buildSong(
                          image: "images/default_img.jpg", song_name: "song3", artist_names: "Artist names",),
                      SizedBox(height: 20,),
                      buildSong(
                          image: "images/default_img.jpg", song_name: "song4", artist_names: "Artist names",),
                      SizedBox(height: 20,),
                      buildSong(
                          image: "images/default_img.jpg", song_name: "song5", artist_names: "Artist names",),
                      SizedBox(height: 20,),
                      buildSong(
                          image: "images/default_img.jpg", song_name: "song6", artist_names: "Artist names",),
                      SizedBox(height: 20,),


                    ],
                  ),
                ),

              ],
            )
        ),
      ),
    );
  }
}
