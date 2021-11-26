import 'package:e_commerce/colors.dart';
import 'package:e_commerce/ex.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/Library.dart';
import 'Song.dart';
import 'ArtistInfo.dart';
import 'Addsong.dart';
import 'Extract.dart';
import 'package:provider/provider.dart';
import 'user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PlaylistInfo extends StatefulWidget {
  static const String id = "playlistinfo_screen";
  const PlaylistInfo({Key? key}) : super(key: key);

  @override
  State<PlaylistInfo> createState() => _PlaylistInfoState();
}

class _PlaylistInfoState extends State<PlaylistInfo> {

  Widget build(BuildContext context) {
    Provider.of<Data>(context,listen: false).Add = false;
    return SafeArea(
        child: Scaffold(
          backgroundColor: scaffoldbgcolor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: appbarcolor,
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Library.id);},
                        icon: Icon(Icons.arrow_back_ios_rounded, color: darkfontcolor,),
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert ,color: Color(0xFF1CDFCB), ),
                        onPressed: () {  },
                      ),
                    ],
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 50, ),
                        height: 200,
                        width: 200,
                        child: Image(
                          image: AssetImage("images/default_img.jpg"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: Text(Provider.of<Data>(context,listen: false).playlistname,
                        style: TextStyle(
                          color: darkfontcolor,
                          fontSize: 40,
                        ),),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text("No of songs", style: TextStyle(color: darkfontcolor, fontSize: 15),),
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 10),

                          ),
                          FloatingActionButton(onPressed: (){Navigator.pushNamed(context, Addsong.id); }, child: Icon(Icons.add, color:darkfontcolor,size: 30,),backgroundColor: navigationbariconcolor,)

                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  child: playlistTxt(playlistData: Provider.of<Data>(context,listen: false).addingSong)
                ),

              ],
            ),
          ),
        )
    );
  }
}
