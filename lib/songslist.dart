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
import 'ex.dart';







class Songlist extends StatefulWidget {
  static const String id = "songlist_screen";

  @override
  State<Songlist> createState() => _SonglistState();
}

class _SonglistState extends State<Songlist> {


  List songdata=[];





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
                        child: Text('${Provider.of<Data>(context).genrename} tracks',
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
                    child: msgTxt(songdata: Provider.of<Data>(context).data_list2, albumiddata: Provider.of<Data>(context).id_datalist,)
                ),

              ],
            )
        ),
      ),
    );
  }
}
