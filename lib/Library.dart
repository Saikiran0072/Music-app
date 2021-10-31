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


void main() {
  runApp(MaterialApp(
    home: Library(),
  ));
}
class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbgcolor,

      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee()));
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
            GestureDetector(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PlaylistInfo()));},
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 8),
                    height: 80,
                    width: 320,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: containercolor),
                    child: Row(
                      children: [
                        Container(
                          padding:EdgeInsets.symmetric(vertical: 5),
                          child: Image(
                            image: AssetImage("images/default_img.jpg"),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Playlist 1", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PlaylistInfo()));},
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 8),
                    height: 80,
                    width: 320,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: containercolor),
                    child: Row(
                      children: [
                        Container(
                          padding:EdgeInsets.symmetric(vertical: 5),
                          child: Image(
                            image: AssetImage("images/default_img.jpg"),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Playlist 2", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Playlist()));},
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 8),
                    height: 80,
                    width: 320,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: containercolor),
                    child: Row(
                      children: [
                        Container(
                          padding:EdgeInsets.symmetric(vertical: 5),
                          child: Image(
                            image: AssetImage("images/default_img.jpg"),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Playlist 3", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Createplaylist()));},
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => Mainpagee()));

              },
            ),


            IconButton(

              icon: Icon(Icons.music_note, color: navigationbariconcolor),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Library()));

              },
            ),
            IconButton(

              icon: Icon(Icons.favorite, color: navigationbariconcolor),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Favorites()));

              },
            ),

            IconButton(

              icon: Icon(Icons.person, color: navigationbariconcolor),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profilepage()));

              },
            ),
          ],
        ),
      ),
    );
  }
}
