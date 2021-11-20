import 'package:e_commerce/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'favorites.dart';
import 'playlist.dart';
import 'savedplaylist.dart';
import 'profilepage.dart';
import 'Mainpage.dart';
import 'songslist.dart';
import 'PlaylistInfo.dart';
import 'Extract.dart';


void main() {
  runApp(MaterialApp(
    home: Library(),
  ));
}
class Library extends StatelessWidget {
  static const String id = "library_screen";
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbgcolor,

      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, Mainpagee.id);
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        title: Text('Your Library'),
        centerTitle: true,
        backgroundColor: appbarcolor,

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildPlaylist(image: "images/default_img.jpg", playlist_name: "playlist1"),
            SizedBox(height: 20,),
            buildPlaylist(image: "images/default_img.jpg", playlist_name: "playlist2"),
            SizedBox(height: 20,),
            buildPlaylist(image: "images/default_img.jpg", playlist_name: "playlist3"),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.pushNamed(context, Createplaylist.id);},
        child: Icon(Icons.add),
        backgroundColor: navigationbariconcolor,

      ),
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
