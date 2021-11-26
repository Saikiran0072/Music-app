import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'Addsong.dart';
import 'Library.dart';
import 'colors.dart';
import 'favorites.dart';
import 'profilepage.dart';
import 'Mainpage.dart';
import 'package:provider/provider.dart';
import 'user.dart';



void main() {
  runApp(MaterialApp(
    home: Playlist(),
  ));
}
class Playlist extends StatelessWidget {
  static const String id = "savedplaylist_screen";
  const Playlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:scaffoldbgcolor,
      appBar: AppBar(
        backgroundColor: appbarcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, Library.id);
          },
          icon: Icon(Icons.arrow_back_ios_rounded,color: Color(0xFF1CDFCB),),
        ),
        actions: [
          Container(
            height: 45,
            width: 45,
            color: appbarcolor,
            child: IconButton(
              icon: Icon(Icons.more_vert ,color: Color(0xFF1CDFCB), ),
              onPressed: () {  },
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30.0),
              height: 200.0,
              width: 200.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset('images/default_img.jpg',
                  height:200.0 ,
                  width: 300.0,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              child: Text(Provider.of<Data>(context,listen: false).playlistname,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: darkfontcolor,
                ),

              ),
            ),
            SizedBox(height: 10.0,),
            SizedBox(height: 30.0,),
            Container(
              child: Text("Let's find some Songs " ,
                style: TextStyle(

                  fontSize: 25.0,
                  color: darkfontcolor,
                ),


              ),

            ),
            SizedBox(height:50.0),
            Container(
              height: 40.0,
              width: 170.0,

              decoration: BoxDecoration(
                color: containercolor,
                borderRadius: BorderRadius.circular(30),

              ),

              child: RaisedButton(
                color: containercolor,
                onPressed: () {Navigator.pushNamed(context, Addsong.id);},
                child: Text('Add Songs',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: darkfontcolor,
                    )
                ),


              ),



            ),
          ],
        ),

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
